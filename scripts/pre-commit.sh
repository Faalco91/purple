#!/bin/bash
echo "🔍 Vérification du code avec le linter..."

# Exécuter le linter (exemple avec ESLint pour du JS)
npm run lint 

if [ $? -ne 0 ]; then
    echo "❌ Erreur : le linter a détecté des problèmes. Corrige-les avant de committer."
    exit 1
fi

echo "✅ Linter passé avec succès !"
exit 0
