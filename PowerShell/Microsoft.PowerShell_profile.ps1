oh-my-posh init pwsh --config "C:\Users\Users\Documents\PowerShell\tokyonight_storm.omp.json" | Invoke-Expression

if ($env:TERM_PROGRAM -eq "nvim")
{ . "$(nvim--locate-shell-integration-path pwsh)" 
}

$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\Users\.config\komorebi'

Import-Module -Name Terminal-Icons

Invoke-Expression (& { (zoxide init powershell | Out-String) })
