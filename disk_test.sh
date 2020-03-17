#!/bin/bash

# light up the usage light of all drives by reading from all drives
# just a test for VS

terminate(){
 for pid in $pids;do
   kill $pid
 done
 echo "Stopped!"
 exit
}

main() {
 trap "terminate" SIGINT SIGTERM SIGKILL

 drive_list=$(ls /dev/sd*)
 pids=""
 echo "Lighting up all drives by reading from them, press CTRL-C to stop..."
 for drive in $drive_list;do
   dd if=$drive of=/dev/null 2> /dev/null &
   pids+=" $!"
 done

 wait $pids
}
main "${@}"

