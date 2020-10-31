# NewProjectCreator
Un créateur simple en shell, pour la création plus rapide de projet dev

Un créateur qui va ajouter les scripts nvhtml & nvphp dans le PATH, ces scripts lanceront la construction des fichiers de base pour les projets HTML et PHP

# Utilisation

Pour l'utiliser, mettre le terminal dans le dossier recevant les projets et taper la commande correspondant au language utilisé
##nvhtml  
va créer un dossier contenant un fichier HTML, un fichier CSS & un fichier JS, tous lié
##nvphp  
va créer un dossier contenant un fichier PHP, un fichier CSS & un dossier composent avec un header en PHP tous lié

## Fonctionement par paramètre   
*Exemple* :  
* nvhtml project
* project  is the name define    
## Fonctionnement par demande
*Exemple* :  
* nvhtml
* Quel est le nom du projet ? :
* project
* project is the name define  

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

# TEST

Des tests de fonctionnement ont était éffectué sur *OS X 10.15* et *Ubuntu 20.04*
