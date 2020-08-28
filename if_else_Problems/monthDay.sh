

#!/bin/bash -x

echo "Enter date or month"
read x
y="Mar 20"
y= date -d"${y}" +%m%d  
z="June 20"
z= date -d"${z}" +%m%d

x= date -d"${x}" +%m%d

if [[ ($x -gt $y && $z -gt $x) ]]

then
	echo "True"
else
	echo "False"
fi
