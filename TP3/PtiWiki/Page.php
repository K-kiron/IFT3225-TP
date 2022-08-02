<?php
/**
* Classe pour construire une page d'un Wiki
*  on transpose la structuration proposée par 
*   James Payne, Beginning Python, Wiley, 2010, p 430-431
*/

class Page{
    private $wiki, $nom, $nomFichier, $texte, $cnx;
    
    function __construct($wiki,$nom){
        require "database.php";
        $this->wiki=$wiki;
        $this->nom=$nom;
        $this->nomFichier=$wiki->getBase()."/".$nom;
        $this->cnx = $conn;
    }
    
    function exists(){
        $request = "SELECT content FROM Texts WHERE title = '$this->nom'";
        $result = mysqli_query($this->cnx, $request);
        $nb_rows = mysqli_num_rows($result);
        return $nb_rows == 1;
    }
    
    function load(){
        $request = "SELECT content FROM Texts WHERE title = '$this->nom'";
        $result = mysqli_query($this->cnx, $request);
        // $nb_rows = mysqli_num_rows($result);
        $tuple = mysqli_fetch_assoc($result);
        $this->texte = $tuple["content"];

        // $handle = fopen($this->nomFichier, "r");
        // if(!$handle) die("erreur d'ouverture de {$this->nomFichier}");
        // $this->texte = fread($handle, filesize($this->nomFichier));
        // fclose($handle);
        return $this;
    }
    
    function save(){
        $texte = addslashes($this->texte);
        $nom = $this->nom;

        $request = "SELECT content FROM Texts WHERE title = '$this->nom'";
        $result = mysqli_query($this->cnx, $request);
        $nb_rows = mysqli_num_rows($result);
        
        // if it exists such a file, we can directly update his content;
        // if not we have to insert a new file into our database
        if ($nb_rows > 0) {
            $request = "UPDATE Texts SET content = '$texte' WHERE title = '$nom'";
        } else {
            $request = "INSERT INTO Texts (title, content) VALUES ('$nom', '$texte');";
        }
    
        mysqli_query($this->cnx, $request);
        
        

        // $handle = fopen($this->nomFichier,"w");
        // if(!$handle) die("erreur d'ouverture de {$this->nomFichier}");
        // fwrite($handle,$this->texte);
        // fclose($handle);
        return $this;
    }
    
    function delete(){
        // unlink($this->nomFichier);
        $request = "DELETE FROM Texts WHERE title = '$this->nom'";
        mysqli_query($this->cnx, $request);
    }
    
    function getText(){
        return $this->texte;
    }
    
    function setText($texte){
        $this->texte=$texte;
        return $this;
    }
    
}

?>