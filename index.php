<?php ?>
<!DOCTYPE html PUBLIC "-//W3C//DTDXHTML 1.0 Frameset//ES" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Premium Series
Description: A three-column, fixed-width blog design.
Version    : 1.0
Released   : 20090303

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Taller XML</title>
<meta name="keywords" content="" />
<meta name="Premium Series" content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/propi.css" rel="stylesheet" type="text/css" media="screen" />
<script src="js/ajax.js" type="text/javascript"></script>

<?php 
include_once 'lib/llibreria.php';
connectar(); 
?>

<!--  funciÃ³ cercar fitxa mineral -->
<script type="text/javascript">
function cercar()
{
var cadena = '<style type="text/css" >' + "\n" ; 
cadena +='TD.dada { ' + "\n" ; 
cadena += 'font-weight: bold;' + "\n" ; 
cadena += 'color : red;' + "\n" ;  
cadena += '}' + "\n" ;  
cadena += '</style>' + "\n" ;  
cadena +='<table border="2" >'; 
var valor = document.getElementById('s').value;
valor = valor.toUpperCase() ; 
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.open("GET","http://tallerxml.web44.net/unitat2/minerals_simple.xml",false);
xmlhttp.send();
xmlDoc=xmlhttp.responseXML;
var x=xmlDoc.getElementsByTagName("minerals");
for (i=0;i<x.length;i++)
  {
  if (x[i].getElementsByTagName("nom")[0].childNodes[0].nodeValue==valor)
  { 
  cadena +='<tr><td colspan="3" align="center" class="dada">';
  cadena +=x[i].getElementsByTagName("nom")[0].childNodes[0].nodeValue;
  cadena +='</td></tr><tr><td>Duresa</td><td class="dada">';
  cadena +=x[i].getElementsByTagName("duressa")[0].childNodes[0].nodeValue;
  cadena +='</td><td rowspan="4"><img src="'; 
  cadena +=x[i].getElementsByTagName("foto")[0].childNodes[0].nodeValue;
  cadena += '" ></tr><tr><td>Densitat</td><td class="dada">';
  cadena +=x[i].getElementsByTagName("densitat")[0].childNodes[0].nodeValue;
  cadena +='</td></tr><tr><td>ComposiciÃ³</td><td class="dada">';
  cadena +=x[i].getElementsByTagName("composicio")[0].childNodes[0].nodeValue;
  cadena +='</td></tr><tr><td>Color</td><td class="dada">';
  cadena +=x[i].getElementsByTagName("color")[0].childNodes[0].nodeValue;
  cadena +='</td></tr><tr><td>Grup</td><td class="dada">';
  cadena +=x[i].getElementsByTagName("grup")[0].childNodes[0].nodeValue;
  cadena +='</td><td align="center" class="dada">'; 
  cadena +=x[i].getElementsByTagName("nom")[0].childNodes[0].nodeValue;
  cadena +='</td></tr>';  
  }
  }
  cadena +="</table>";
  document.getElementById("flowers").innerHTML = cadena; 
  }
  
</script>	
</head>
<body onload="temps();" >

<!-- start header -->
<div id="header">
	<div id="logo">
		 <h1><a href="#"><span style="color: #ffffff;">Taller </span> XML</a></h1>
		<p> PÃ gina sobre XML,RSS,KML i SVG </p>
	</div>
	<div id='cssmenu' >
<ul>
   <li class='active '><a href='index.html'><span>Inici</span></a></li>
   <li class='has-sub '><a href='#'><span>Visors</span></a>
      <ul>
         <li><a href='#'><span>XML</span></a></li>
         <li><a href='#'><span>RSS</span></a></li>
		 <li><a href='#'><span>KML</span></a></li>
		 <li><a href='#'><span>SVG</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='#'><span>Exportació</a>
      <ul>
         <li><a href='#'><span>XML</span></a></li>
         <li><a href='#'><span>RSS</span></a></li>
		 <li><a href='#'><span>KML</span></a></li>
		 <li><a href='#'><span>SVG</span></a></li>
		 <li><a href='#'><span>CSV</span></a></li>
      </ul>
   </li>
   <li class='has-sub '><a href='#'><span>Formularis</span></a>
      <ul>
         <li><a href='javascript:omplir(1);'><span>Minerals</span></a></li>
         <li><a href='javascript:omplir(2);'><span>ACB</span></a></li>
		 <li><a href='#'><span>Noticies</span></a></li>
		 <li><a href='#'><span>Instituts</span></a></li>
     </ul>
   </li>
   <li class='has-sub'><a href='#'><span>Informació</span></a>
   <ul>
         <li><a href='javascript:LoadElement();'><span>Bases</span></a></li>
         <li><a href='javascript:LoadElement();'><span>Alers</span></a></li>
	 </ul>
	 </li>
   </ul>
   <span id="temps" >La temperatura és </span>
</div>
	
</div>
<!-- end header -->
<div id="wrapper">
	<!-- start page -->
	<div id="page">
		<div id="sidebar1" class="sidebar">
			<ul>
				<li>
					<h2>Noticies</h2>
<?php
$xslDoc = new DOMDocument();
$xslDoc->load("files/rss.xsl");

$xmlDoc = new DOMDocument();
$xmlDoc->load("http://www.europapress.es/rss/rss.aspx?buscar=ACB"); // en aquest cas agafara la url del RSS de l'adreÃ§a

$xsltProcessor = new XSLTProcessor();
$xsltProcessor->registerPHPFunctions();
$xsltProcessor->importStyleSheet($xslDoc);

//foreach ($params as $key => $val)
//$xsltProcessor->setParameter('', $key, $val);

//$xsltProcessor->setParameter('','s_name', 'title');
//$xsltProcessor->setParameter('','s_value', 35);


echo $xsltProcessor->transformToXML($xmlDoc);
?>
			
				</li>
				<li>
					<h2>Recent Comments</h2>
					<ul>
						<li><a href="#">Free CSS Templates</a> on <a href="#">Aliquam libero</a></li>
						<li><a href="#">Free CSS Templates</a> on <a href="#">Consectetuer adipiscing elit</a></li>
						<li><a href="#">Free CSS Templates</a> on <a href="#">Metus aliquam pellentesque</a></li>
						<li><a href="#">Free CSS Templates</a> on <a href="#">Suspendisse iaculis mauris</a></li>
						<li><a href="#">Free CSS Templates</a> on <a href="#">Urnanet non molestie semper</a></li>
						<li><a href="#">Free CSS Templates</a> on <a href="#">Proin gravida orci porttitor</a></li>
					</ul>
				</li>
				<li>
					<h2>Categories</h2>
					<ul>
						<li><a href="#">Aliquam libero</a></li>
						<li><a href="#">Consectetuer adipiscing elit</a></li>
						<li><a href="#">Metus aliquam pellentesque</a></li>
						<li><a href="#">Suspendisse iaculis mauris</a></li>
						<li><a href="#">Urnanet non molestie semper</a></li>
						<li><a href="#">Proin gravida orci porttitor</a></li>
					</ul>
				</li>
				<li>
					<h2>Archives</h2>
					<ul>
						<li><a href="#">September</a> (23)</li>
						<li><a href="#">August</a> (31)</li>
						<li><a href="#">July</a> (31)</li>
						<li><a href="#">June</a> (30)</li>
						<li><a href="#">May</a> (31)</li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- start content -->
		<div id="content">
<!-- Capa central , inicialment amb el mapa " -->
			<div class="flower" id="flowers">
<script>

Load_partits(); 			
//			<iframe src="http://tallerxml.web44.net/unitat2/mapa_pavellons.html" scrolling="no" align="middle" height="300" width="500"></iframe>

</script>
			</div>
			<div class="post">
				<h1 class="title"><a href="#">Welcome to Our Website!</a></h1>
				<p class="byline"><small>Posted on October 1st, 2009 by <a href="#">Free CSS Templates</a></small></p>
				<div class="entry">
                     <iframe src="http://tallerxml.web44.net/unitat2/album_minerals2.php?ample=500&amp;alt=350" scrolling="no" align="middle" height="300" width="500"></iframe>					
				</div>
			</div>
			<div class="post">
				<h2 class="title"><a href="#">Sample Tags</a></h2>
				<p class="byline"><small>Posted on October 1st, 2009 by <a href="#">Free CSS Templates</a></small></p>
				<div class="entry">
					<h3>An H3 Followed by a Blockquote:</h3>
					<blockquote>
						<p>&#8220;Donec leo, vivamus nibh in augue at urna congue rutrum. Quisque dictum integer nisl risus, sagittis convallis, rutrum id, congue, and nibh.&#8221;</p>
					</blockquote>
					<h3>Bulleted List:</h3>
					<ul>
						<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
						<li>Phasellus nec erat sit amet nibh pellentesque congue.</li>
						<li>Cras vitae metus aliquam risus pellentesque pharetra.</li>
					</ul>
					<h3>Numbered List:</h3>
					<ol>
						<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
						<li>Phasellus nec erat sit amet nibh pellentesque congue.</li>
						<li>Cras vitae metus aliquam risus pellentesque pharetra.</li>
					</ol>
					<p class="links"><a href="#" class="more">&laquo;&laquo;&nbsp;&nbsp;Read More&nbsp;&nbsp;&raquo;&raquo;</a></p>
				</div>
			</div>
			<div class="post">
				<h2 class="title"><a href="#">Lorem Ipsum Dolor </a></h2>
				<p class="byline"><small>Posted on October 1st, 2009 by <a href="#">Free CSS Templates</a></small></p>
				<div class="entry">
					<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl. Nullam non wisi a sem semper eleifend. Donec mattis libero eget urna. Duis pretium velit ac mauris. Proin eu wisi suscipit nulla suscipit interdum. Aenean lectus lorem, imperdiet at, ultrices eget, ornare et, wisi. </p>
					<p class="links"><a href="#" class="more">&laquo;&laquo;&nbsp;&nbsp;Read More&nbsp;&nbsp;&raquo;&raquo;</a></p>
				</div>
			</div>
		</div>
		<!-- end content -->
		<!-- start sidebars -->
		<div id="sidebar2" class="sidebar">
			<ul>
				<li>
					<!-- <form id="searchform" > -->
						<div>
						<h2>Cercar</h2>
						<span id="cercar">
							<input type="text" name="s" id="s" size="15" value="" onkeypress="if (event.keyCode == 13) cercar()" />
                        </span>							
						</div>
					<!-- </form> --> 
				</li>
				<li>
					<h2>Tags</h2>
					<p class="tag"><a href="#">dolor</a> <a href="#">ipsum</a> <a href="#">lorem</a> <a href="#">sit amet</a> <a href="#">dolor</a> <a href="#">ipsum</a> <a href="#">lorem</a> <a href="#">sit amet</a></p></li>
				<li>
					<h2>Calendar</h2>
					<div id="calendar_wrap">
						<table summary="Calendar">
							<caption>
							October 2009
							</caption>
							<thead>
								<tr>
									<th abbr="Monday" scope="col" title="Monday">M</th>
									<th abbr="Tuesday" scope="col" title="Tuesday">T</th>
									<th abbr="Wednesday" scope="col" title="Wednesday">W</th>
									<th abbr="Thursday" scope="col" title="Thursday">T</th>
									<th abbr="Friday" scope="col" title="Friday">F</th>
									<th abbr="Saturday" scope="col" title="Saturday">S</th>
									<th abbr="Sunday" scope="col" title="Sunday">S</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<td abbr="September" colspan="3" id="prev"><a href="#" title="View posts for September 2009">&laquo; Sep</a></td>
									<td class="pad">&nbsp;</td>
									<td colspan="3" id="next">&nbsp;</td>
								</tr>
							</tfoot>
							<tbody>
								<tr>
									<td>1</td>
									<td>2</td>
									<td>3</td>
									<td id="today">4</td>
									<td>5</td>
									<td>6</td>
									<td>7</td>
								</tr>
								<tr>
									<td>8</td>
									<td>9</td>
									<td>10</td>
									<td>11</td>
									<td>12</td>
									<td>13</td>
									<td>14</td>
								</tr>
								<tr>
									<td>15</td>
									<td>16</td>
									<td>17</td>
									<td>18</td>
									<td>19</td>
									<td>20</td>
									<td>21</td>
								</tr>
								<tr>
									<td>22</td>
									<td>23</td>
									<td>24</td>
									<td>25</td>
									<td>26</td>
									<td>27</td>
									<td>28</td>
								</tr>
								<tr>
									<td>29</td>
									<td>30</td>
									<td>31</td>
									<td class="pad" colspan="4">&nbsp;</td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>
				<li>
					<h2>Categories</h2>
					<ul>
						<li><a href="#">Aliquam libero</a></li>
						<li><a href="#">Consectetuer adipiscing elit</a></li>
						<li><a href="#">Metus aliquam pellentesque</a></li>
						<li><a href="#">Suspendisse iaculis mauris</a></li>
						<li><a href="#">Urnanet non molestie semper</a></li>
						<li><a href="#">Proin gravida orci porttitor</a></li>
						<li><a href="#">Aliquam libero</a></li>
						<li><a href="#">Consectetuer adipiscing elit</a></li>
						<li><a href="#">Metus aliquam pellentesque</a></li>
						<li><a href="#">Urnanet non molestie semper</a></li>
						<li><a href="#">Proin gravida orci porttitor</a></li>
						<li><a href="#">Aliquam libero</a></li>
						<li><a href="#">Consectetuer adipiscing elit</a></li>
						<li><a href="#">Metus aliquam pellentesque</a></li>
						<li><a href="#">Suspendisse iaculis mauris</a></li>
						<li><a href="#">Urnanet non molestie semper</a></li>
						<li><a href="#">Proin gravida orci porttitor</a></li>
						<li><a href="#">Metus aliquam pellentesque</a></li>
						<li><a href="#">Suspendisse iaculis mauris</a></li>
						<li><a href="#">Urnanet non molestie semper</a></li>
						<li><a href="#">Proin gravida orci porttitor</a></li>
						<li><a href="#">Metus aliquam pellentesque</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- end sidebars -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end page -->
</div>
<div id="footer">
	<p class="copyright">&copy;&nbsp;&nbsp;2009 All Rights Reserved &nbsp;&bull;&nbsp; Design by <a href="http://www.freecsstemplates.org/">Free CSS Templates</a>.</p>
	<p class="link"><a href="#">Privacy Policy</a>&nbsp;&#8226;&nbsp;<a href="#">Terms of Use</a></p>
</div>
<div style="text-align:center;">This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a>
<dt>Localització</dt>
<span class="geo"><abbr class="latitude" title="41.380018">41.380018</abbr> <abbr class="longitude"
title="2.120052">2.120052</abbr></span>
  <div itemprop="contentLocation">
  <div itemprop="geo" itemscope itemtype="http://schema.org/GeoCoordinates">
    <meta itemprop="longitude" content="2.120052" />
    <meta itemprop="latitude" content="41.380018" />
  </div>
  </div>
</div>
</body>
</html>
