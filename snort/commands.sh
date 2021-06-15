
#if rules path specifed in snort.lua file
sudo /usr/local/bin/snort -c /usr/local/etc/snort/snort.lua -s 65535 -k none -l /var/log/snort -i eth0 -m 0x1b


#if rules path not specifed in snort.lua file
sudo /usr/local/bin/snort -c /usr/local/etc/snort/snort.lua -R /usr/local/etc/rules/snort3-community.rules  -s 65535 -k none -l /var/log/snort -i eth0 -m 0x1b

sudo /usr/local/bin/snort -c /usr/local/etc/snort/snort.lua  -l /var/log/snort -i eth0 -Q -A json -q > alerts.json


sudo /usr/local/bin/snort -c /usr/local/etc/snort/snort.lua  -l /var/log/snort -i eth0 -Q -A json -q  -s 65535 -k none  -m 0x1b> alerts.json


sudo /usr/local/bin/snort -c /usr/local/etc/snort/snort.lua -s 65535 -k none -l /var/log/snort -i eth0 -m 0x1b -q > alerts.json
