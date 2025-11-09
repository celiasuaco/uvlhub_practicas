#!/bin/sh

# Salir inmediatamente si un comando falla
set -e

echo "--- 1. Formateando código (Black/isort) ---"
ruff format app rosemary core

echo "\n--- 2. Arreglando errores (Flake8) ---"
ruff check app rosemary core --fix

echo "\n--- 3. Comprobando errores restantes ---"
ruff check app rosemary core

echo "\n✅ ¡Formateo y linting completados!"