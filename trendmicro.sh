#!/bin/bash
if [ -f /opt/TrendMicro/EndpointBasecamp/bin/tmxbc ]; then
        echo il_file_esiste > /root/tmxbc.txt;
else
	mkdir /opt/tmxbc/
	cd /opt/tmxbc/
	wget https://api-eu1.xbc.trendmicro.com/api/public/download_xbc_agent/v1.0/f589dade-ce3a-44db-a0e3-ccd0ee77b32d -O tmxbc_linux64.tgz
	tar -zxvf tmxbc_linux64.tgz
	sleep 30
	./tmxbc install
	sleep 30
fi
