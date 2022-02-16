<?php
require_once("./classes/dataBase.class.php");
require_once("./classes/categorie.class.php");
require_once("./classes/couleur.class.php");
require_once("./classes/contance.class.php");
require_once("./classes/produit.class.php");


$categories = new Categorie;
if(isset($_POST['submit'])){
   print_r($categories);


}


?>