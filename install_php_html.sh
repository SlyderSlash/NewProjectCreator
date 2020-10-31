#!/bin/bash





touch /usr/local/bin/nvhtml
echo '#!/bin/bash

echo $PWD

read -p "Quel est le nom du projet ? : " -n 11 nameofproject

if [[ -z "$nameofproject" ]]
then
        echo "Aucune valeur de nom detectée, Fin du script"
        pkill html.sh
        exit 0
elif [[ -n "$nameofproject" ]]
then 
mkdir $PWD/$nameofproject
# On écrit coucou sur la console
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
echo "/* Placer ici votre code CSS */" >> $PWD/$nameofproject/style.css
echo "/* Placer ici votre code JS */" >> $PWD/$nameofproject/script.js
cd $PWD/$nameofproject
code .
exit 0
else
echo "Désolé il y a eu un bug avec $nameofproject"
fi' >> /usr/local/bin/nvhtml
chmod +x /usr/local/bin/nvhtml

echo "html module installed"

touch /usr/local/bin/nvphp
echo '#!/bin/bash

echo $PWD

read -p "Quel est le nom du projet ? : " -n 11 nameofproject

if [[ -z "$nameofproject" ]]
then
        echo "Aucune valeur de nom detectée, Fin du script"
        pkill html.sh
        exit 0
elif [[ -n "$nameofproject" ]]
then 
mkdir $PWD/$nameofproject
# On écrit coucou sur la console
echo "Dossier Créer !"
touch $PWD/$nameofproject/index.html
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
      <?php include=\"/composent/header.php\" ?>
      <!-- Contenu du site-->
  </body>
</html>" >> $PWD/$nameofproject/index.php
echo "<header>
<h1>$nameofproject</h1>
  <header>" >> $PWD/$nameofproject/composent/header.php
echo "/* Placer ici votre code JS */" >> $PWD/$nameofproject/script.js
cd $PWD/$nameofproject
code .
exit 0
else
echo "Désolé il y a eu un bug avec $nameofproject"
fi' >> /usr/local/bin/nvphp
chmod +x /usr/local/bin/nvphp

echo "PHP module installed"

echo "Les nouvelles commandes sont : nvhtml pour un projet html/css/js & nvphp pour un projet PHP"