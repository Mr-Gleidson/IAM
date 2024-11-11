$group = "nome@listadedistribuicao.com.br"
$members = Get-DistributionGroupMember -Identity $group

foreach ($member in $members) {
    try {
        Remove-DistributionGroupMember -Identity $group -Member $member.PrimarySmtpAddress -Confirm:$false
        Write-Host "Removido: $($member.PrimarySmtpAddress)"
    }
    catch {
        Write-Host "Erro ao remover $($member.PrimarySmtpAddress): $($_.Exception.Message)"
    }
}
