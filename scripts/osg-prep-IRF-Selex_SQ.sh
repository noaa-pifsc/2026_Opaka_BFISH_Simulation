
#!/bin/bash
# prep files for condor job execution
dos2unix ./scripts/create_OMEM_wrapper_IRF_Selex_SQ.sh
dos2unix ./IRFSelex_SQ_25_yrfwd/target_dirs.txt
dos2unix ./scripts/OSG_IRF_Selex_SQ.r

# make directory structure
xargs -d '\n' mkdir -p -- < ./IRFSelex_SQ_25_yrfwd/target_dirs.txt

# change permissions on wrapper script
chmod 777 ./scripts/create_OMEM_wrapper_IRF_Selex_SQ.sh
