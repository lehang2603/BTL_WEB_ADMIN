<?php
  $host="localhost";
  $username="root";
  $password="";
  $dbname="cosmetics";

  $con=mysqli_connect($host,$username,$password,$dbname);
  if(!$con){
    die("Connection Failed: ".mysqli_connect_error());
  }
  
?>