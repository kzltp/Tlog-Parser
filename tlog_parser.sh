#!/bin/bash
order=1
## Only change below variable
tlogpath=/home/arif/tlog.log


function usage() {
	echo "Usage: $0 standard|normal"
	exit 1
}

if [[ -z $1 ]]; then
	CMD=standard
fi
CMD=$1

for i in $( awk -F'"' '{ print $12 }' $tlogpath | uniq); do
    user=$(grep -i -m 1 $i $tlogpath | awk -F'"' '{ print $16 }')
    epocht=$(grep -i -m 1 $i $tlogpath | awk -F'"' '{ print $29 }' | sed 's/://;s/,//')
    humant=$(date -d @$epocht)
    echo $i "-->" $user $humant
    order=$(($order + 1))
done
read -ep "Please Write Rec-ID: " REC
grep -i $REC $tlogpath | sed  's/^.*({)/\"1"/' | cut -d " " -f 7- > /tmp/tlog-play.log
echo -e "########## $REC Playing ##########\n"
epocht=$(grep -i -m 1 $REC $tlogpath | awk -F'"' '{ print $29 }' | sed 's/://;s/,//')
if [ "$CMD" == "standard" ]; then
	tlog-play  -r file --file-path /tmp/tlog-play.log
else
	tlog-play --goto=$epocht  -r file --file-path /tmp/tlog-play.log
fi
echo -e "########## $REC Play Ended ##########"
