oh-my-posh init pwsh --config "C:\Users\Users\Documents\PowerShell\json.omp.json" | Invoke-Expression

if ($env:TERM_PROGRAM -eq "nvim")
{ . "$(nvim--locate-shell-integration-path pwsh)" 
}

$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\Users\.config\komorebi'

Import-Module -Name Terminal-Icons

Invoke-Expression (& { (zoxide init powershell | Out-String) })

$env:FZF_DEFAULT_OPTS='--height 100% --layout=reverse --border'

function ff
{
  nvim $(fzf --preview 'bat --color=always {}' --preview-window '~3')
}
