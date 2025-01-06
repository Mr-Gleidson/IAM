#Forçar Sync
 
Invoke-Command -ComputerName NOME-SERVIDOR -ScriptBlock {Start-ADSyncSyncCycle -PolicyType Delta}
# Verificar status
 
Invoke-Command -ComputerName NOME-SERVIDOR -ScriptBlock {Get-ADSyncScheduler}
