<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    
<table border="1" width="400">
<caption> Jornada 4a </caption>
<tbody>
<th class="normal">Equip Local</th>
<th class="normal"> </th>
<th class="normal">Equip visitant </th>
<th class="normal"> </th>
</tbody>

<xsl:for-each select='/taller_xml/calendari_acb2[jornada="4"]' >   <!-- Filtre els jugadors en la psoció de Base -->
<tr>
<td> <xsl:value-of select="equip_local" /></td>
<td><xsl:value-of select="punts_local" /></td>
<td><xsl:value-of select="equip_visitant" /></td>
<td><xsl:value-of select="punts_visitant" /></td>
</tr>
</xsl:for-each>
</table>  

</xsl:template>
</xsl:stylesheet>     
