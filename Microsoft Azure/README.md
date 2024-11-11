# **Exchange Distribution Group Management Scripts**

Scripts em **PowerShell** para automatizar a gestão de listas de distribuição no Exchange Online. Esses scripts facilitam a remoção e adição em massa de membros em listas de distribuição, economizando tempo e reduzindo erros manuais.

---

## **Propósito**

Estes scripts foram desenvolvidos para:

- **Remover todos os membros** de uma lista de distribuição do Exchange Online.
- **Adicionar novos membros** a uma lista de distribuição a partir de um arquivo CSV.

---

## **Pré-requisitos**

- **Exchange Online PowerShell**: Você precisa do módulo PowerShell do Exchange Online instalado.
- **Permissões Adequadas**: Certifique-se de ter permissões administrativas para modificar listas de distribuição.

---

## **Como Conectar ao Exchange Online**

Antes de executar os scripts, você deve se conectar ao Exchange Online. 

### **Passo 1: Conectar-se**

Execute o seguinte comando, substituindo `seu-email@dominio.com` pelo seu e-mail administrativo:

```powershell
Connect-ExchangeOnline -UserPrincipalName seu-email@dominio.com
```

---

### **Passo 2: Conectar-se**

Execute o seguinte comando, substituindo `seu-email@dominio.com` pelo seu e-mail administrativo:

```powershell
Connect-ExchangeOnline -UserPrincipalName seu-email@dominio.com
```
Se o comando retornar uma lista de caixas de correio, você está conectado com sucesso ao Exchange Online.
