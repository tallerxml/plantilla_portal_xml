<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">

<style>
table {
  background-color: #cccccc;
  width: 450; 
  border-radius: 10px 10px 10px 10px;
-moz-border-radius: 10px 10px 10px 10px;
-webkit-border-radius: 10px 10px 10px 10px;
border: 0px solid #000000;


background: #d5cea6; /* Old browsers */
background: -moz-linear-gradient(top,  #d5cea6 0%, #c9c190 40%, #b7ad70 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#d5cea6), color-stop(40%,#c9c190), color-stop(100%,#b7ad70)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #d5cea6 0%,#c9c190 40%,#b7ad70 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #d5cea6 0%,#c9c190 40%,#b7ad70 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #d5cea6 0%,#c9c190 40%,#b7ad70 100%); /* IE10+ */
background: linear-gradient(to bottom,  #d5cea6 0%,#c9c190 40%,#b7ad70 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d5cea6', endColorstr='#b7ad70',GradientType=0 ); /* IE6-9 */


	font-family: "Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Geneva, Verdana, sans-serif;
	color: #000000;
	font-size: 17;
	padding: 18;
	text-shadow: 1px 1px 1px #A1A1A1;

}

table.input {
size: 250; 
}







</style>

<script>

function resultat(v1,v2)      // rebem la resposta escollida i la correcta 
{
if (v1 == v2 )  // Analitzem si hem encertat 
document.getElementById('correcte').innerHTML = "Encert <br />" + v2  ;    // Si hem encertat escrivim encert  i la resposta correcta  
else 
document.getElementById('correcte').innerHTML = "Enrrada <br />"  + v2  ;    // Si hem errat escrivim errada i la resposta correcta 
}

</script>
               <xsl:variable name="apos">'</xsl:variable>
				<xsl:for-each select="preguntes/pregunta">				
					<table >
						<tr>
						  <td colspan="3" align="center"> <xsl:value-of select="enunciat"/> <br /><br /> </td>
						  </tr>
						  <tr>
							<td  align="center" >
								<img width="200"  alt="" style="border:1px solid black;" >
								    <xsl:attribute name="src">
										<xsl:value-of select="foto" />
									</xsl:attribute> 
								</img>
								<div id="correcte"></div>
							</td>
							<td >
							 <xsl:variable name="r1" select="resposta1" />
							<input type="button"  name="resposta1" >
							<xsl:attribute name="value">
										<xsl:value-of select="resposta1" />
									</xsl:attribute> 
									
									<xsl:attribute name="onclick">
										<xsl:value-of select="concat('resultat(', $apos, resposta1 ,  $apos , ',' , $apos,  correcta , $apos,  ')' ) " />
									</xsl:attribute> 
									
							</input>
							<br /><br />
													
							<input type="button"  name="resposta2">
							<xsl:attribute name="value">
										<xsl:value-of select="resposta2" />
									</xsl:attribute> 
									<xsl:attribute name="onclick">
										<xsl:value-of select="concat('resultat(', $apos, resposta2 ,  $apos , ',' , $apos,  correcta , $apos,  ')' ) " />
									</xsl:attribute> 
							</input>
							<br /><br />
							<input type="button"  name="resposta3">
							<xsl:attribute name="value">
										<xsl:value-of select="resposta3" />
									</xsl:attribute> 
									<xsl:attribute name="onclick">
										<xsl:value-of select="concat('resultat(', $apos, resposta3 ,  $apos , ',' , $apos,  correcta , $apos,  ')' ) " />
									</xsl:attribute> 
							</input>
							<br /> <br /> <br />
							</td>
							</tr>
							<tr><td id="resultat" ></td>
							<td><input type="button" value="Nova pregunta" onclick="window.location.reload();" />  <!-- Refresquem la pagina per pregunta nova -->
							</td>  
							</tr>
							<tr><td> </td></tr>
							
														</table>
									</xsl:for-each>
		
	</xsl:template>
</xsl:stylesheet> 