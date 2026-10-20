
#!/bin/bash
# prep files for condor job execution
dos2unix ./scripts/create_OMEM_wrapper_LRF_poorrec.sh
dos2unix ./LRF_poorrec_25_yrfwd/target_dirs.txt
dos2unix ./scripts/OSG_LRF_poorrec.r

# make directory structure
xargs -d '\n' mkdir -p -- < ./LRF_poorrec_25_yrfwd/target_dirs.txt

# change permissions on wrapper script
chmod 777 ./scripts/create_OMEM_wrapper_LRF_poorrec.sh
