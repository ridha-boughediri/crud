<?php
require_once("./classes/dataBase.class.php");
require_once("./classes/categorie.class.php");
require_once("./classes/couleur.class.php");
require_once("./classes/contance.class.php");
require_once("./classes/produit.class.php");

// $list= new Categorie();
$NvelleCoul = new Couleur();
echo " <br>";


if (isset($_POST['submit'])) {

  $couleur = $_POST['couleur'];
  $NvelleCoul->CreateColor($couleur);
}

?>
<!DOCTYPE html>
<html>
<style>
    table,
    th,
    td {
        border: 1px solid black;
    }
</style>

<body>

<h2>Couleur Forms</h2>


<form method="POST">
  <label for="lname">nom de la couleur:</label><br>
  <input type="text" name="couleur" value=""><br><br>
  <input type="submit" name="submit" value="submit">
</form>
    <h2>couleur table</h2>

    <table style="width:100%">
        <tr>
            <th>id_couleur</th>
            <th>nom_couleur</th>
            <th>supprimer</th>
            <th>modifier</th>

            <?php  $couleurs= new Couleur();?>

<?php if($couleurs->getCoul()) : ?>
<?php foreach($couleurs->getCoul()as $couleur): ?>
  <tr>
    <td><?=  $couleur["id_couleur"] ?></td>
    <td><?=  $couleur["couleur"]  ?></td>
    <td>supprimer</td>
    <td>modifier</td>
 

<?php endforeach; ?>
<?php else: ?>
<?php endif; ?>


</body>

</html>