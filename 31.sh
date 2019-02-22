#!/bin/bash -u
#To run, pipe the output to a file. Eg: bash 31.sh abc.html
#repo=$1
#days=$2
repo=/home/ashishmathur/digital-performance-testing/
days=120
cd $repo;
count=$(git log --since=$days.days | grep "^commit" | wc -l)
cat <<- _EOF1_
<html><head>Commit History (last $days days)</head><body>
<table border=1>
<tr><td>CommitID</td><td>Author Name</td><td>Date</td><td>Message</td></tr>
_EOF1_
for (( i=0,start=1,end=6; i<$count; i++,start=start+6,end=end+6 ))
{
    id=$(git log --since=$days.days | sed -n "${start},${end}p"| sed -n '1p' | awk '{print $2}')
    author=$(git log --since=$days.days | sed -n "${start},${end}p" | sed -n '2p' | awk '{print $2}')
    date=$(git log --since=$days.days | sed -n "${start},${end}p" | sed -n '3p' | cut -d " " -f 2-11)
    message=$(git log --since=$days.days | sed -n "${start},${end}p" | sed -n '5p')

    cat <<- _EOF_
    <tr><td>$id</td> <td>$author</td> <td>$date</td><td>$message</td></tr>
_EOF_
}
echo "</table>"
echo "</body></html>"
