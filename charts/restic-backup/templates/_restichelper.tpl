{{/*
Expand the name of the chart.
*/}}
{{- define "restic.repositoryUrl" -}}
{{- printf "s3:%s/%s" .Values.s3.url .Values.s3.bucketName }}
{{- end }}


{{/*
Expand the name of the chart.
*/}}
{{- define "restic.veleroAnnotations" -}}
{{- if eq "dump-only" .Values.backup.mode -}}
{{ printf "%s: %s-%s" "pre.hook.backup.velero.io/container" .Chart.Name "backup" }}
{{ printf "%s: %s" "pre.hook.backup.velero.io/command" (( printf "[\"%s\", \"%s\", \"%s\"]" "/bin/sh" "-c" "/scripts/backup_client.py run --dump-only") | squote ) }}
{{ printf "%s: %s" "pre.hook.backup.velero.io/timeout"  .Values.backup.dumpTimeout }}
{{- end }}

{{- end }}
