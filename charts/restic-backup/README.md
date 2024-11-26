
# Backup with DBDump and (otional restic)

* use PVC for temporary dbdump-files with `backup.dumpVolume`

## operation mode

### standalone
Use schedule plan to trigger backup regulary

### dump-only
Deployment start container with endless sleep. Velero can execute command within container.
Pod Annotations will be added for velero pre backup hook to backup databases as configured.

At restore via velero the dump files will be restored at /backup/dbdump. Operator hat to do a database restore by hand at this time. 

# Change Log

## unreleased
* remove `resources.limits.cpu`

## 0.4.0
* restic monitor was removed from helm chart
* docker-restic-backupclient 0.8.2 supports notify on error

## 0.3.9
* add possibility to define own restore / cachdir volume mount

## 0.3.2 / 0.3.3
* velero annotation for preBackupHook timeout `backup.dumpTimeout`

## 0.3.1
* velero annotation for preBackupHook 

## 0.3.0
* mode for using within velero pre-backup-hook
* image is from private repo now. you will need imagePullSecrets

## 0.2.1
* probes at restic monitor errors to fast, sensibility reduced

## 0.2.0
Breaking Change
* set default ressource requests

New
* Support exsisting  persistent volume claims
* remove some line breaks in deployment
* use image 0.7.1
* values.yaml for testing
