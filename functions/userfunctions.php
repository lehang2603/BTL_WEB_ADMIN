<?php

include('config/dbcon.php');

function getAllActive($table){
    global $con;
    $query = "SELECT * FROM $table WHERE status='0'";
    $query_run = mysqli_query($con, $query);
    return $query_run;
}
function getIDActive($table,$id){
    global $con;
    $query = "SELECT * FROM $table WHERE id='$id' AND status='0' ";
    $query_run = mysqli_query($con, $query);
    return $query_run;
}
function redirect($url, $message)
{
    $_SESSION['message']=$message;
    header('Location: '.$url);
    exit();
}
?>