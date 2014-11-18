<?php
include_once "../lib/llibreria.php";    // cridem a la llibreria
connectar();       // Fem la connexió a la BD

$tipus=$_REQUEST["tipus"];  // lleguim la variable enviada

if ($tipus=="1")
{
	$tit = "Minerals " ;   // Titol del desplegable pels minerals
	$sql = "SELECT grup FROM minerals Group By grup ";    // Consulta especifica per minerals, el camp que retorna és el grup
}

if ($tipus=="2")
{
	$tit = "Equips ACB" ; // Titol del desplegable pels equips
	$sql = "SELECT equip FROM jugadors_acb Group By equip "; // Consulta per Jugadors que retorna l'equip i de manera unica
}


$res = mysql_query($sql);   // executa la consulta escollida

$t  =' <form name="formu"> ';   // Capçalera del formulari
$t .='<select name="tria" >';    // Obrim el desplegable
$t .= "<option>" . $tit . "</option>";
for ($x=0; $x < mysql_num_rows($res); $x++)   // Fem un bucle pe ra tots els registres de la BD escollits
{
	$t .='<option>' . utf8_encode(mysql_result($res,$x,0)) . '</option>';  // Creem le sopcions
}
$t .='</select>';    // Tanquem el desplegable
$t .='</form>';     // Tanquem el formulari
echo $t ;    // Enviem el text generat
?>