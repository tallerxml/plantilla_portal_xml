<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet type="text/xsl" href="plantilla.xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
<style>
table { 
border: 1px solid #ddd;
// border-collapse: separate;
border-left: 0;
border-radius: 4px;
border-spacing: 0px;
width: 300px;
}
thead {
display: table-header-group;
vertical-align: middle;
border-color: inherit;
border-collapse: separate;
}
tr {
display: table-row;
vertical-align: inherit;
border-color: inherit;
}
th, td {
padding: 5px 4px 6px 4px; 
text-align: left;
vertical-align: top;
border-left: 1px solid #ddd;    
}
td {
border-top: 1px solid #ddd;    
}
thead:first-child tr:first-child th:first-child, tbody:first-child tr:first-child td:first-child {
border-radius: 4px 0 0 0;
}
thead:last-child tr:last-child th:first-child, tbody:last-child tr:last-child td:first-child {
border-radius: 0 0 0 4px;
}


</style>

<script>

function resultat(v1,v2)
{
alert(v1); 
alert(v2); 
}

</script>
				<xsl:for-each select="preguntes/pregunta">				
					<table class="intro">
						<tr>
						  <td colspan="3" align="center"> <xsl:value-of select="enunciat"/> </td>
						  </tr>
						  <tr>
							<td  align="center" >
								<img width="105" height="126" alt="" style="border:1px solid black;" >
								    <xsl:attribute name="src">
										<xsl:value-of select="foto" />
									</xsl:attribute> 
								</img>
							</td>
							<td >
							<input type="button"  name="resposta1">
							<xsl:attribute name="value">
										<xsl:value-of select="resposta1" />
									</xsl:attribute> 
									
							</input>
							<br /><br />
													
							<input type="button"  name="resposta2">
							<xsl:attribute name="value">
										<xsl:value-of select="resposta2" />
									</xsl:attribute> 
							</input>
							<br /><br />
							<input type="button"  name="resposta3">
							<xsl:attribute name="value">
										<xsl:value-of select="resposta3" />
									</xsl:attribute> 
							</input>
							<br /><br />
							</td>
							</tr>
							<tr><td id="resultat" colspan="3">Resultat: </td></tr>
							
														</table>
									</xsl:for-each>
		
	</xsl:template>
</xsl:stylesheet> 