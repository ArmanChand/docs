{{- define "gitlab.configYaml.gitaly" -}}
gitaly:
  client_path: /home/git/gitaly/bin
  token: "<%= File.read('/etc/gitlab/gitaly/gitaly_token') %>"
{{- end -}}

{{- define "gitlab.configYaml.repositories" -}}
repositories:
  storages: # You must have at least a `default` storage path.
{{ include "gitlab.gitaly.storages" . | indent 4 }}
{{- end -}}
