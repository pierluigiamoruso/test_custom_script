#!/bin/bash
cd /root
wget https://azcustomscript.blob.core.windows.net/qualyscloudagent/QualysCloudAgent.rpm
sleep 10
if [ $(rpm -qa| grep -c qualys-cloud-agent) -gt 0 ]; then
        echo rpm_esistente > agent.txt;
else
        rpm -Uvh /root/QualysCloudAgent.rpm
fi
