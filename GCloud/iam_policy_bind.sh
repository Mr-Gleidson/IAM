#!/bin/bash
 
# Lista de projetos
projects=(
    "nome-do-projeto"
)
 
# Lista de roles
roles=(
    "roles/id-da-role"
)
 
# Loop pelos projetos
for project in "${projects[@]}"; do
    # Loop pelos roles
    for role in "${roles[@]}"; do
        gcloud projects add-iam-policy-binding "$project" --member="group:nome-do-grupo@dominio.com" --role="$role"
        
    done
done