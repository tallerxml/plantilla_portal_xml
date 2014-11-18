<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/rss">
	
		<style>
			body {
				font-size:0.83em;
			}
			dd {
	color:#FF0000;
	font-family:Tahoma, "Lucida Sans Unicode", Verdana, sans-serif;
	font-size:70%;
	letter-spacing:0.1em;
	margin:2em ;
	padding:0.3em 1em;
	font-weight:bold;
}
		</style>
	
	<div>
					<xsl:for-each select="channel/item">
					<dd class="titol">
						<xsl:element name="a">
							<xsl:attribute name="href">
								<xsl:value-of select="link"/>
							</xsl:attribute>
							<xsl:value-of select="title"/>
						</xsl:element>
					 </dd>	
					</xsl:for-each>
		
		</div>

</xsl:template>
</xsl:stylesheet>