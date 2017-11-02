<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:transform version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method='html' version='1.0' encoding='UTF-8' indent='yes'/>
	<xsl:template match="/">
<html> 
<head><title>Publlication</title> 

 <link rel="stylesheet" type="text/css" href="styles/main.css" /> 

</head> 
<body> 
<h1>List of Publications</h1>
<ol>

<xsl:for-each select="publications/area">
<h2><xsl:value-of select="@category"/></h2>
	<xsl:for-each select="publication">

<li>
		<xsl:for-each select="./author">
<xsl:choose>

<xsl:when test=".='Uttam Kumar Roy'">
<span class="author1"><xsl:value-of select="."/>, </span>
</xsl:when>
<xsl:otherwise>
<span class="author"><xsl:value-of select="."/>, </span>
</xsl:otherwise>
</xsl:choose>

		</xsl:for-each>
		<span class="title">"<xsl:value-of select="./title"/>", </span>
		<span class="conf"><xsl:value-of select="./publisher"/>, </span>

<a href="{./file}"><xsl:value-of select="actionUrl"/>.pdf</a>
<br/><br/>
</li>



	</xsl:for-each>
	</xsl:for-each>

</ol>
</body>
</html>
	</xsl:template>
</xsl:transform>