
# Backup with DBDump and (otional restic)

* use PVC for temporary dbdump-files with `backup.dumpVolume`

## operation mode

### standalone
Use schedule plan to trigger backup regulary

### dump-only
Deployment start container with endless sleep. Velero can execute command within container.

# Change Log

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
