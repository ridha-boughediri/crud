<?php
require_once("./classes/dataBase.class.php");
require_once("./classes/categorie.class.php");
require_once("./classes/couleur.class.php");
require_once("./classes/contance.class.php");
require_once("./classes/produit.class.php");


$list= new Categorie();
print_r($list->getCate());
echo "<br>";
$listcou= new Couleur();
print_r($listcou->getCoul());
echo "<br>";

$listcon= new Contenance();
print_r($listcon->getContenace());
echo "<br>";
$newproduit= new Produit();
var_dump($newproduit->getArticle());
?>


