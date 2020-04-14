# cat newcerts.sh 
#!/bin/bash

set -x

cat newlist.txt |while read i; do cid=`echo $i | cut -f1 -d ' '`; domain=`echo $i | cut -f2 -d ' '`; echo $cid $domain ;/usr/local/bin/beluga-acme --domain $domain --customer-id $cid --email l1_soc@belugacdn.com --debug; sleep 60; done
