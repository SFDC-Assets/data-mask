sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p data -e mask.demo
sf org list
# sfdx shane:data:file:upload -f /etc/passwd -n zeb0x01test
# Find the latest version of the package at https://sfdc.co/datamask-install, and copy that id from the url to the below line
sf package install -w 20 -r -p 04tKV000002AghV
sf shane user psl -n datamask_DataMaskUserPsl -g User -l User
sf org assign permset -n datamask
sf apex run -f scripts/apex/createCustomLibrary.apex

sf project deploy start
sf demoutil user password set -p salesforce1 -g User -l User
sf org open -p /lightning/o/Contact/list
