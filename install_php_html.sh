#!/bin/bash


rm /usr/local/bin/nvhtml
rm /usr/local/bin/nvphp


touch /usr/local/bin/nvhtml
echo '#!/bin/bash

echo "Demande HTML lançée"
echo $PWD

if [[ -z "$1" ]]
then
read -p "Quel est le nom du projet ? : " -n 11 nameofproject
echo "$nameofproject is the name define"
else
echo "$1 is the first var on nvhtml"
nameofproject="$1"
echo "$nameofproject is the name define"
fi

if [[ -z "$nameofproject" ]]
then
        echo "Aucune valeur de nom detectée, Fin du script"
        pkill html.sh
        exit 0
elif [[ -n "$nameofproject" ]]
then 
mkdir $PWD/$nameofproject
echo "Dossier Créer !"
touch $PWD/$nameofproject/index.html
touch $PWD/$nameofproject/style.css
touch $PWD/$nameofproject/script.js

echo "<!DOCTYPE html>
<html>
  <head>
      <!-- En-tête du site-->
    <meta charset=\"utf-8\">
    <title>$nameofproject</title><!-- Nom du projet-->
    <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" /> <!-- Lien vers le fichier CSS-->
  </head>
  <body>
      <!-- Contenu du site-->
    <script src=\"script.js\"></script> <!-- Lien vers le fichier JS-->
  </body>
</html>" >> $PWD/$nameofproject/index.html
echo "HTML check"
echo "/* Placer ici votre code CSS */" >> $PWD/$nameofproject/style.css
echo "CSS check"
echo "/* Placer ici votre code JS */" >> $PWD/$nameofproject/script.js
echo "JS check"
cd $PWD/$nameofproject
echo "Start Project"
code .
exit 0
else
echo "Désolé il y a eu un bug avec $nameofproject"
fi' >> /usr/local/bin/nvhtml
chmod +x /usr/local/bin/nvhtml


echo "HTML module installed"
echo "----------------------------------"


touch /usr/local/bin/nvphp
echo '#!/bin/bash

echo "Demande PHP lançée"
echo $PWD

if [[ -z "$1" ]]
then
read -p "Quel est le nom du projet ? : " -n 11 nameofproject
echo "$nameofproject is the name define"
else
echo "$1 is the first var on nvphp"
nameofproject="$1"
echo "$nameofproject is the name define"
fi

if [[ -z "$nameofproject" ]]
then
        echo "Aucune valeur de nom detectée, Fin du script"
        pkill html.sh
        exit 0
elif [[ -n "$nameofproject" ]]
then 
mkdir $PWD/$nameofproject
echo "Dossier Créer !"
touch $PWD/$nameofproject/index.php
touch $PWD/$nameofproject/style.css
touch $PWD/$nameofproject/script.js
mkdir $PWD/$nameofproject/composent
touch $PWD/$nameofproject/composent/header.php

echo "<!DOCTYPE html>
<html>
  <head>
      <!-- En-tête du site-->
    <meta charset=\"utf-8\">
    <title>$nameofproject</title><!-- Nom du projet-->
    <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" /> <!-- Lien vers le fichier CSS-->
  </head>
  <body>
      <?php include \"/composent/header.php\" ?>
      <!-- Contenu du site-->
  </body>
</html>" >> $PWD/$nameofproject/index.php
echo "INDEX PHP check"
echo "<header>
<h1>$nameofproject</h1>
  <header>" >> $PWD/$nameofproject/composent/header.php
echo "HEADER PHP check"
echo "/* Placer ici votre code JS */" >> $PWD/$nameofproject/script.js
echo "JS check"
echo "/* Placer ici votre code CSS */" >> $PWD/$nameofproject/style.css
echo "CSS check"
cd $PWD/$nameofproject
echo "Start Project"
code .
exit 0
else
echo "Désolé il y a eu un bug avec $nameofproject"
fi' >> /usr/local/bin/nvphp
chmod +x /usr/local/bin/nvphp


echo "PHP module installed"
echo "----------------------------------"


touch /usr/local/bin/nvnode
echo '#!/bin/bash

echo "Demande node.JS lançée"
echo $PWD

if [[ -z "$1" ]]
then
read -p "Quel est le nom du projet ? : " -n 11 nameofproject
echo "$nameofproject is the name define"
else
echo "$1 is the first var on nvhtml"
nameofproject="$1"
echo "$nameofproject is the name define"
fi

if [[ -z "$nameofproject" ]]
then
        echo "Aucune valeur de nom detectée, Fin du script"
        pkill html.sh
        exit 0
elif [[ -n "$nameofproject" ]]
then 
mkdir $PWD/$nameofproject
echo "Dossier Créer !"
touch $PWD/$nameofproject/index.html
touch $PWD/$nameofproject/style.css
touch $PWD/$nameofproject/script.js

echo "<!DOCTYPE html>
<html>
  <head>
      <!-- En-tête du site-->
    <meta charset=\"utf-8\">
    <title>$nameofproject</title><!-- Nom du projet-->
    <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" /> <!-- Lien vers le fichier CSS-->
  </head>
  <body>
      <!-- Contenu du site-->
    <script src=\"script.js\"></script> <!-- Lien vers le fichier JS-->
  </body>
</html>" >> $PWD/$nameofproject/index.html
echo "HTML check"
echo "/* Placer ici votre code CSS */" >> $PWD/$nameofproject/style.css
echo "CSS check"
echo "/* Placer ici votre code JS */
console.log(\"Bonjour, node.js, ceci es un test de fonctionnement final \" ">> $PWD/$nameofproject/script.js
echo "JS check"
echo "----------------------------------"
cd $PWD/$nameofproject
npm -y init
echo "initialisation Node.js"
echo "----------------------------------"
echo "Start Project"
echo "----------------------------------"
echo "Test Project"
node script.js
echo "----------------------------------"
echo "Project Start on VSCode"
code .
exit 0
else
echo "Désolé il y a eu un bug avec $nameofproject"
fi' >> /usr/local/bin/nvnode
chmod +x /usr/local/bin/nvnode

echo "NODE.JS module installed"

echo "
----------------------------------
Les nouvelles commandes sont : 
nvhtml pour un projet html/css/js 
nvphp pour un projet PHP"