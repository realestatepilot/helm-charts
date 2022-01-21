{{/*
Expand the name of the chart.
*/}}
{{- define "restic.repositoryUrl" -}}
{{- printf "%s/%s" .Values.s3.url .Values.s3.bucketName }}
{{- end }}
