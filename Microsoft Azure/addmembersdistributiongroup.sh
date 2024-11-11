# Defina o nome da lista de distribuição
$group = "nome@listadedistribuicao.com.br"

# Importa o arquivo CSV com os endereços de e-mail
$emails = Import-Csv -Path "C:\scripts\emails.csv"

# Loop para adicionar cada e-mail à lista de distribuição
foreach ($email in $emails) {
    try {
        # Tenta adicionar o e-mail à lista de distribuição especificada
        Add-DistributionGroupMember -Identity $group -Member $email.EmailAddress
        Write-Host "Adicionado: $($email.EmailAddress)"
    }
    catch {
        # Exibe mensagem de erro se houver problema ao adicionar o e-mail
        Write-Host "Erro ao adicionar $($email.EmailAddress): $($_.Exception.Message)"
    }
}
