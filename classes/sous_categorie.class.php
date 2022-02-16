<?php



class Souscategorie extends DataBase{

    public function getCateSou(){
        $sql = "SELECT * FROM sous_categorie";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();
      
        while($result = $stmt->fetchAll()) {
          return $result;
        }
      }
    

    
       public function CreateCateSOU($nom_sous_catégorie) {
        $sql = "INSERT INTO sous_categorie(nom_sous_catégorie) VALUES (?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$nom_sous_catégorie]);
      }
      
      public function UpdatePost($nom_sous_catégorie) {
        $sql = "UPDATE posts SET title = ?, body = ?, author = ? WHERE id_categorie= ?";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$nom_sous_catégorie]);
      }
  
  
      
      public function DeleCate($id_categorie){
        $sql= "DELETE FROM categories WHERE id_categorie=?";
        $stmt=$this->connect()->prepare($sql);
        $stmt->execute([$id_categorie]);
      }
  
      







}


?>