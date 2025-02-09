#!/bin/sh

# Vérifie si le dernier commit est signé et valide
if ! git log -1 --pretty=%G? | grep -q "G"; then
    echo "❌ Erreur : Le commit n'est pas signé ou la signature n'est pas valide !"
    echo "✅ Veuillez signer votre commit avec 'git commit -S -m \"message\"'."
    exit 1
fi

echo "✅ Commit signé et valide, vous pouvez pousser votre code."
exit 0