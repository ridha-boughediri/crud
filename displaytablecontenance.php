<?php
require_once("./classes/dataBase.class.php");
require_once("./classes/categorie.class.php");
require_once("./classes/couleur.class.php");
require_once("./classes/contance.class.php");
require_once("./classes/produit.class.php");

$lesmesure = new Contenance();

if (isset($_POST['submit'])) {

  $nom_contenance= $_POST['mus_contenance'];
  $lesmesure->CreateContena($mus_contencance); 
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
  <h2>Contenance Forms</h2>


  <form method="POST">
    <label for="lname">contenance:</label><br>
    <input type="text" name="mus_contenance" value=""><br><br>
    <input type="submit" name="submit" value="submit">
  </form>
  <h2>contenance table</h2>

  <table style="width:100%">
    <tr>
      <th>id_contenance</th>
      <th>nom_contenance</th>
      <th>supprimer</th>
      <th>modifier</th>


    </tr>
    <tr>
      <td>result</td>
      <td>result2</td>
      <td>supprimer</td>
      <td>modifier</td>

  </table>



</body>

</html>