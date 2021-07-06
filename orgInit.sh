sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
# Find the latest version of the package at https://sfdc.co/datamask-install, and copy that id from the url to the below line
sfdx force:package:install -w 20 -r -p 04t3k0000027CCn
sfdx shane:user:psl -l User -g User -n datamask_DataMaskUserPsl
sfdx shane:user:permset:assign -l User -g User -n datamask
sfdx force:source:push
sfdx force:org:open -p /lightning/o/Contact/list?filterName=AllContacts
