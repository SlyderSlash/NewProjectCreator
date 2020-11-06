# NewProjectCreator
## Version 2.0 - HTML/PHP/NODE.JS
###### Un créateur simple en shell, pour la création plus rapide de projet dev

Un créateur qui va ajouter les scripts nvhtml & nvphp dans le PATH, ces scripts lanceront la construction des fichiers de base pour les projets HTML et PHP

#### Necessite que la commande code . de Visual Studio Code soit fonctionnel et node soit installé

## Utilisation

Pour l'utiliser, mettre le terminal dans le dossier recevant les projets et taper la commande correspondant au language utilisé
### nvhtml  
va créer un dossier contenant un fichier HTML, un fichier CSS & un fichier JS, tous liés
### nvphp  
va créer un dossier contenant un fichier PHP, un fichier CSS & un dossier composent avec un header en PHP tous liés
### nvnode  
va créer un dossier contenant un fichier HTML, un fichier CSS & un fichier JS, tous liés, ensuite lançera une initialisation node.js basique et lancera le projet pour tester.

### Fonctionement par paramètre   
###### *Exemple* :  
* user : nvhtml project
* *npc* : project  is the name define    
### Fonctionnement par demande
###### *Exemple* :  
* user : nvhtml
* *npc* : Quel est le nom du projet ? :
* user : project
* *npc* : project is the name define  


*npc = NewProjectCreator*
## Installation

#### Positionnement

Dans le terminal, ce positionner dans le dossier contenant le fichier install_php_html.sh
#### Autorisation

Donner l'autorisation de lancement grâce à la commande : chmod +x install_php_html.sh
#### Installation

Lancer l'installation grâce à la commande : ./install_php_html.sh

Les scripts s'installent

## Desinstallation 
#### Positionnement

Dans le terminal, ce positionner dans le dossier contenant le fichier uninstallphphtml.sh
#### Autorisation

Donner l'autorisation de lancement grâce à la commande : chmod +x uninstallphphtml.sh
#### Installation

Lancer l'installation grâce à la commande : ./uninstallphphtml.sh

Les 2 scripts sont desinstallé

## Problême

### *Permission Denied*
Si lors de l'installation un "Permission Denied" apparait plusieurs fois, relançer le script avec un sudo : 
##### sudo ./install_php_html.sh

## TEST

Des tests de fonctionnement ont était éffectué sur *OS X 10.15* et *Ubuntu 20.04*
