#!/bin/bash
#bash 30.sh 10.1.4.102,10.1.4.57 /home/ubuntu/request/ /home/ashishmathur/Downloads/del
ips=$1
remotepath=$2
localpath=$3
sshUser=ashish_22484

remoteParentdir="$(dirname "$remotepath")"
dir=$(basename $remotepath)
echo $remoteParentdir
echo $dir

for hostname in $(echo $ips | sed "s/,/ /g")
do
echo $hostname
ssh ${sshUser}@${hostname} -o StrictHostKeyChecking=no "cd $remoteParentdir && sudo tar -czvf $dir.tar.gz $dir;"
scp ${sshUser}@${hostname}:$remoteParentdir/$dir.tar.gz $(realpath "$localpath")/request_${hostname}.tar.gz &
done
