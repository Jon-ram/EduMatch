<?php
include 'db.php';

class User extends DB{
    private $nombre;
    private $username;


    public function userExists($user, $pass){
        $md5pass = $pass;
        $query = $this->connect()->prepare('SELECT * FROM usuario WHERE Username = :user AND password = :pass');
        $query->execute(['user' => $user, 'pass' => $md5pass]);

        if($query->rowCount()){
            return true;
        }else{
            return false;
        }
    }

    public function setUser($user){
        $query = $this->connect()->prepare('SELECT * FROM usuario WHERE Username = :user');
        $query->execute(['user' => $user]);
        
        foreach ($query as $currentUser) {
           
            $this->usename = $currentUser['Username'];

        }
    }

    public function getUser(){
        return $this->usename;
    }

    
}

?>