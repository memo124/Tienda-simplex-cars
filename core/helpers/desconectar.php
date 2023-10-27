<?php
    session_start();
    var_export($_SESSION);
    if($_SESSION['user']){
        session_destroy();
        header("location: /Sitioweb/Sitioweb/views/privado/Index.php");
    }
    else{
        header("location: /Sitioweb/Sitioweb/views/privado/Index.php");
    }
?>