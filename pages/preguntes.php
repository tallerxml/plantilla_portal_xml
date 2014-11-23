<?php
//$params = array('id' => $_GET['id']);   // Agafem el parametre "id" que serà enviat per l'Ajax i que correspont al número de mineral escollit en el desplegable 

$xslDoc = new DOMDocument();
$xslDoc->load("preguntes.xsl");

$xmlDoc = new DOMDocument();
$xmlDoc->load("http://tallerxml.web44.net/web4/pages/crea_preguntes.php");

$xsltProcessor = new XSLTProcessor();
$xsltProcessor->registerPHPFunctions();
$xsltProcessor->importStyleSheet($xslDoc);

//foreach ($params as $key => $val)
//$xsltProcessor->setParameter('', $key, $val);

echo $xsltProcessor->transformToXML($xmlDoc);
?>

