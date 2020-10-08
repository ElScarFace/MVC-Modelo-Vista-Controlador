<?php 

/**
 * 
 */
class Servicios
{
	public $Nombre;
	public $Precio;
	public $PDO;
	/*public $Estado;
	public $Message;*/
	function __construct()
	{
		$this->PDO=new PDO("mysql:host=localhost;dbname=ejemplo","root","");
	}
	public function Crear(){
		//debe ejecutar el sp_Create
		$stmobj=$this->PDO->prepare("call sp_Create(:dato1, :dato2)");
			$stmobj->bindParam(':dato1', $this->Nombre);
			$stmobj->bindParam(':dato2', $this->Precio);
			
			
			$stmobj->execute();


	}public function Vista(){
		//Debe ejecutar el sp_Vista
		$stmobj = $this->PDO->prepare("call sp_Vista()");
			$stmobj->execute();

			$lista = $stmobj->FetchAll(PDO::FETCH_OBJ);
			return $lista;

	}





}







 ?>