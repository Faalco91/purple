#!/bin/sh

# Affiche les informations du dernier commit pour le débogage
echo "Informations du dernier commit :"
git log -1 --pretty=full

# Vérifie si le dernier commit est signé et valide
echo "Vérification de la signature du dernier commit..."
SIGNATURE_STATUS=$(git log -1 --pretty=%G?)
echo "Statut de la signature : $SIGNATURE_STATUS"

if ! echo "$SIGNATURE_STATUS" | grep -q "G"; then
    echo "❌ Erreur : Le commit n'est pas signé ou la signature n'est pas valide !"
    echo "✅ Veuillez signer votre commit avec 'git commit -S -m \"message\"'."
    exit 1
fi

echo "✅ Commit signé et valide, vous pouvez pousser votre code."
exit 0