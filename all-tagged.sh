gh issue list --search "is:issue label:c++23 is:closed label:plenary-approved" --limit 400 --json body,labels --template '{{range .}}
{{tablerow (printf "# %v" .body )}}
{{tablerow (.labels | pluck "name" | join ", " | printf "%s" )}}
{{tablerow (printf "  ")}}
{{end}}
'
