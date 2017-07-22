# Stages ULB


## Installation :
1. Installer
  * Linux/Mac: [Composer](https://getcomposer.org/download/), git, mysql et un serveur web (apache par exexmple)
  * Windows: [Composer](https://getcomposer.org/download/), [GitHub Desktop](https://desktop.github.com/) et [WAMP](http://www.wampserver.com/)
2. *git clone https://github.com/Ghostfly/stagesULB*
3. lancer en ligne de commande "*composer install*" depuis la racine du site (qui contient le fichier *composer.json*)
4. remplir les informations de connexion à votre base de données dans bootstrap.php
5. remplir la base de données avec les dumps sql contenus dans /dumps/


## Docs :

Framework : [Slim](https://www.slimframework.com/docs/)

ORM : [Eloquent](https://laravel.com/docs/5.4/eloquent)

Router : [Slim router](https://www.slimframework.com/docs/objects/router.html)

Vues : 
[Twig](https://twig.sensiolabs.org/doc/2.x/) | [Twig view](https://github.com/slimphp/Twig-View)

## Pour vite comprendre le code
### Base de données
* Les dumps des structures des bases de données se trouvent dans _app/dumps_
* L'accès à la base de données doit se faire via les models dans _app/Models/_
* Chaque table doit avoir les entrées "_created_at_" et "_updated_at_"
* Les tables doivent utiliser le moteur _InnoDB_ et l'encoding _utf8_
* Pour utiliser l'index d'une autre table,  

### Routes et controllers
* Les routes sont définies dans _app/routes.php_
* Les controllers liés aux routes se trouvent dans _app/controller/_
* Les controllers doivent être définis  dans _/bootstrap/app.php_

### Affichage (HTML)
* L'affichage se fait via les fichiers _Twig_ dans _/resources_, par l'intermédiaire des controllers

### Misc
* Le dossier _/vendor_ est généré par composer lors de l'installation et ne doit donc pas être push en commit
* Le dossier _/public_ ne contient pas d'élément dynamique modifiable lié au site