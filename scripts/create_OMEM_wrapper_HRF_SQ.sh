
#!/bin/bash

# print where we are
pwd
ls -l
echo $PATH
echo $@

# make directory to work in and set-up
mkdir -p working/
mkdir -p working/rtmp
export TMPDIR=$_CONDOR_SCRATCH_DIR/rtmp
mv start.tar.gz working/
mv OSG_HRF_SQ.r working/
cd working/

# unpack everything from initial tar file
tar -xzf start.tar.gz
orig_files=$(ls)

# rename variables passed into the script
target_dir=$1

# begin calcs
start=`date +%s`
Rscript OSG_HRF_SQ.r $target_dir

# end of calcs book-keeping
end=`date +%s`
runtime=$((end-start))
echo $runtime
echo Start $start >  runtime.txt
echo End $end >> runtime.txt
echo Runtime $runtime >> runtime.txt

# Clean-up
rm start.tar.gz

# Create empty file so that it does not mess up when repacking tar
touch End.tar.gz
# only pack up certain items
tar -czf End.tar.gz -C $target_dir . 
# move tar out of working/
cd ..
mv working/End.tar.gz .
# delete working/
rm -r working/
