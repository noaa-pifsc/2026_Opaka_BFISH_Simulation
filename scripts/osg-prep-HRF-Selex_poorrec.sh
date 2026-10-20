
#!/bin/bash
# prep files for condor job execution
dos2unix ./scripts/create_OMEM_wrapper_HRF_Selex_poorrec.sh
dos2unix ./HRFSelex_poorrec_25_yrfwd/target_dirs.txt
dos2unix ./scripts/OSG_HRF_Selex_poorrec.r

# make directory structure
xargs -d '\n' mkdir -p -- < ./HRFSelex_poorrec_25_yrfwd/target_dirs.txt

# change permissions on wrapper script
chmod 777 ./scripts/create_OMEM_wrapper_HRF_Selex_poorrec.sh
