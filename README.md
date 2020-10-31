# NewProjectCreator
Un créateur simple en shell, pour la création plus rapide de projet dev

Un créateur qui va ajouter les scripts nvhtml & nvphp dans le PATH, ces scripts lanceront la construction des fichiers de base pour les projets HTML et PHP

# Utilisation

Pour l'utiliser, mettre le terminal dans le dossier recevant les projets et taper la commande correspondant au language utilisé
nvhtml va créer un dossier contenant un fichier HTML, un fichier CSS & un fichier JS, tous lié
nvphp va créer un dossier contenant un fichier PHP, un fichier CSS & un dossier composent avec un header en PHP tous lié

Pour le moment le script demande uniquement le nom du projet et créer le dossier à ce nom la

# Installation

Dans le terminal, ce positionner dans le dossier contenant le fichier install_php_html.sh
Donner l'autorisation de lancement grâce à la commande : chmod +x install_php_html.sh
Lancer l'installation grâce à la commande : ./install_php_html.sh

Le script es installé

# Desinstallation 
Dans le terminal, ce positionner dans le dossier contenant le fichier uninstallphphtml.sh
Donner l'autorisation de lancement grâce à la commande : chmod +x uninstallphphtml.sh
Lancer l'installation grâce à la commande : ./uninstallphphtml.sh

# Problême

*Permission Denied*
Si lors de l'installation un "Permission Denied" apparait plusieurs fois, relançer le script avec un sudo : sudo ./install_php_html.sh
