#!bin/bash
mkdir -p /agentscript
cd /agentscript
curl https://raw.githubusercontent.com/pierluigiamoruso/test_custom_script/main/trendmicro.sh > trendmicro.sh
sh trendmicro.sh
