mysql -pM9dns11st -e "select concat('KILL ',id,';')  into outfile '/tmp/sleep_processes.txt' from information_schema.processlist where Command = 'Sleep'";
mysql -pM9dns11st -e "source /tmp/sleep_processes.txt;"
rm -rf /tmp/sleep_processes.txt
