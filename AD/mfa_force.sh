# Caminho para o arquivo contendo a lista de nomes de usuário
$UserListPath = "C:\Users\diretorio-com-lista-de-nomes\contas-nominais.txt"

# Ler a lista de nomes de usuário
$UserList = Get-Content -Path $UserListPath

# Verificar a conexão com o Azure AD
if (-not (Get-Module -Name AzureAD -ListAvailable)) {
    Install-Module -Name AzureAD -Force -AllowClobber -Scope CurrentUser -ErrorAction Stop
}

if (-not (Get-AzureADTenantDetail -ErrorAction SilentlyContinue)) {
    try {
        Connect-AzureAD -ErrorAction Stop
    } catch {
        Write-Error "Erro ao conectar no Azure AD: $_"
        exit
    }
}

foreach ($User in $UserList) {
    try {
        # Obter o objeto de usuário do Azure AD
        $UserObject = Get-AzureADUser -ObjectId $User -ErrorAction Stop

        # Exigir recadastramento da MFA para o usuário
        Set-AzureADUser -ObjectId $User -ForceChangePasswordNextSignIn $true

        Write-Output "Recadastramento obrigatório do MFA para o usuário: $User"
    } catch {
        Write-Error "Erro de processamento ao usuário: $User - $_"
    }
}
