
#!/bin/bash
# prep files for condor job execution
dos2unix ./scripts/create_OMEM_wrapper_FRS_poorrec.sh
dos2unix ./FRSonly_poorrec_25_yrfwd/target_dirs.txt
dos2unix ./scripts/OSG_FRS_only_poorrec.r

# make directory structure
xargs -d '\n' mkdir -p -- < ./FRSonly_poorrec_25_yrfwd/target_dirs.txt

# change permissions on wrapper script
chmod 777 ./scripts/create_OMEM_wrapper_FRS_poorrec.sh
