<?php

$xslDoc = new DOMDocument();
$xslDoc->load("../files/calendari.xsl");

$xmlDoc = new DOMDocument();
$xmlDoc->load("../files/calendari_acb2.xml");

$xsltProcessor = new XSLTProcessor();
$xsltProcessor->registerPHPFunctions();
$xsltProcessor->importStyleSheet($xslDoc);

echo $xsltProcessor->transformToXML($xmlDoc);
?>

