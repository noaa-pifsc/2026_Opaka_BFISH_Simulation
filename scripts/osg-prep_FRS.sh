
#!/bin/bash
# prep files for condor job execution
dos2unix ./scripts/create_OMEM_wrapper_FRSonly.sh
dos2unix ./FRSonly_SQ_25_yrfwd/target_dirs.txt
dos2unix ./scripts/OSG_FRS_only.r

# make directory structure
xargs -d '\n' mkdir -p -- < ./FRSonly_SQ_25_yrfwd/target_dirs.txt

# change permissions on wrapper script
chmod 777 ./scripts/create_OMEM_wrapper_FRSonly.sh
