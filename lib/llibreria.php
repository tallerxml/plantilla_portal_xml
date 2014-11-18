<?php
function connectar()
{
	//connexió BD del servidor local
	mysql_connect("localhost","root",""); // Connexió servidor Mysql
	mysql_select_db("Taller_xml"); // Escollim Base de Dades
	
	//Per al nostre hosting serà :
	
	//connexió BD del servidor local
	//mysql_connect("mysql1.000webhost.com","a5500181_xml","**contrasenya***"); // Connexió servidor Mysql
	//mysql_select_db("a5500181_xml"); // Escollim Base de Dades
	
}
?>
