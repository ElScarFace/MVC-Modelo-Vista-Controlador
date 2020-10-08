<?php
     require_once("../models/modelo.php");
     $Servicios=new Servicios();
     $lista=$Servicios->Vista();

     //convertir lista en json
     if ($_POST) {
     	
     
     $Servicios->Nombre=$_POST["txtnom"];
     $Servicios->Precio=$_POST["txtpre"];
 }
     /*require_once("../views/vista.php");*/

 ?>