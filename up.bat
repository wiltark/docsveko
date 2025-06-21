:: filepath: create-docs-pages.bat
@echo off
setlocal enabledelayedexpansion

REM Création des répertoires principaux
mkdir src\content\docs\guides
mkdir src\content\docs\features
mkdir src\content\docs\auto-updater
mkdir src\content\docs\cli
mkdir src\content\docs\examples
mkdir src\content\docs\reference

REM Création des pages du Guide
call :create_page "guides/getting-started" "Démarrage rapide" "Commencez avec Veko.js en 5 minutes"
call :create_page "guides/installation" "Installation" "Guide d'installation de Veko.js"
call :create_page "guides/project-structure" "Structure du projet" "Organisation des fichiers dans Veko.js"
call :create_page "guides/configuration" "Configuration" "Options de configuration avancées"

REM Création des pages Fonctionnalités
call :create_page "features/layouts" "Système de layout" "Utilisation des layouts avancés"
call :create_page "features/plugins" "Système de plugins" "Création et utilisation de plugins"
call :create_page "features/routing" "Gestion des routes" "Définition et gestion des routes"
call :create_page "features/logging" "Journalisation" "Système de logs élégant"
call :create_page "features/hot-reload" "Rechargement intelligent" "Hot-reload sélectif"

REM Création des pages Auto-Updater
call :create_page "auto-updater/guide" "Guide Auto-Updater" "Guide complet de l'auto-updater"
call :create_page "auto-updater/configuration" "Configuration Auto-Updater" "Options de configuration"
call :create_page "auto-updater/api" "API Auto-Updater" "API REST pour l'auto-updater"
call :create_page "auto-updater/channels" "Canaux de mise à jour" "Gestion des canaux stable/beta/alpha"

REM Création des pages CLI (fichiers vides pour la génération automatique)
type nul > src\content\docs\cli\index.mdx

REM Création des pages Exemples (fichiers vides)
type nul > src\content\docs\examples\index.mdx

REM Création des pages Référence API (fichiers vides)
type nul > src\content\docs\reference\index.mdx

echo Création des pages terminée!
exit /b

:create_page
set "slug=%~1"
set "title=%~2"
set "description=%~3"

REM Créer le répertoire si nécessaire
for %%a in ("src\content\docs\!slug!") do set "dir=%%~dpa"
if not exist "!dir!" mkdir "!dir!"

REM Créer le fichier MDX avec le frontmatter de base
(
    echo ---
    echo title: !title!
    echo description: !description!
    echo ---
    echo.
    echo # !title!
    echo.
    echo Contenu à rédiger...
) > "src\content\docs\!slug!.mdx"

exit /b