<?php


class Categorie extends DataBase{


    public function getCate(){
      $sql = "SELECT * FROM categories";
      $stmt = $this->connect()->prepare($sql);
      $stmt->execute();
    
      while($result = $stmt->fetchAll()) {
        return $result;
      }
    }
    
     public function CreateCate($categorie_nom) {
      $sql = "INSERT INTO categories(categorie_nom) VALUES (?)";
      $stmt = $this->connect()->prepare($sql);
      $stmt->execute([$categorie_nom]);
    }
    
    public function UpdatePost($id_categorie,$categorie_nom) {
      $sql = "UPDATE posts SET title = ?, body = ?, author = ? WHERE id_categorie= ?";
      $stmt = $this->connect()->prepare($sql);
      $stmt->execute([$categorie_nom,$id_categorie]);
    }


    
    public function DeleCate($id_categorie){
      $sql= "DELETE FROM categories WHERE id_categorie=?";
      $stmt=$this->connect()->prepare($sql);
      $stmt->execute([$id_categorie]);
    }

    

  }


?>