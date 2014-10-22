mobcms
======

V0.1
Tutorial

layout

A classic Application directory layout:

- .htaccess // Rewrite rules
+ public
  | - index.php // Application entry
  | + css
  | + js
  | + img
+ conf
  | - application.ini // Configure 
- application/
  - Bootstrap.php   // Bootstrap
  + controllers
     - Index.php // Default controller
  + views    
     |+ index   
        - index.phtml // View template for default controller
  - library
  - models  // Models
  - plugins // Plugins
DocumentRoot

you should set DocumentRoot to application/public, thus only the public folder can be accessed by user

index.php

index.php in the public directory is the only way in of the application, you should rewrite all request to it(you can use .htaccess in Apache+php mod)

<?php
define("APPLICATION_PATH",  dirname(dirname(__FILE__)));

$app  = new Yaf_Application(APPLICATION_PATH . "/conf/application.ini");
$app->bootstrap() //call bootstrap methods defined in Bootstrap.php
    ->run();
Rewrite rules

Apache

#.htaccess
RewriteEngine On
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule .* index.php
Nginx

server {
  listen ****;
  server_name  domain.com;
  root   document_root;
  index  index.php index.html index.htm;

  if (!-e $request_filename) {
    rewrite ^/(.*)  /index.php/$1 last;
  }
}
Lighttpd

$HTTP["host"] =~ "(www.)?domain.com$" {
  url.rewrite = (
     "^/(.+)/?$"  => "/index.php/$1",
  )
}
application.ini

application.ini is the application config file

[product]
;CONSTANTS is supported
application.directory = APPLICATION_PATH "/application/" 
alternatively, you can use a PHP array instead:

<?php
$config = array(
   "application" => array(
       "directory" => application_path . "/application/",
    ),
);

$app  = new yaf_application($config);
....

default controller

In Yaf, the default controller is named IndexController:

<?php
class IndexController extends Yaf_Controller_Abstract {
   // default action name
   public function indexAction() {  
        $this->getView()->content = "Hello World";
   }
}
?>
view script

The view script for default controller and default action is in the application/views/index/index.phtml, Yaf provides a simple view engineer called "Yaf_View_Simple", which supported the view template written by PHP.

<html>
 <head>
   <title>Hello World</title>
 </head>
 <body>
   <?php echo $content; ?>
 </body>
</html>
Run the Applicatioin
