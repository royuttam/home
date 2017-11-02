<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:include href="bookPublication.xsl"/>

   <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />

   <xsl:key name="division" match="publication" use="@area" />

   <xsl:template match="publications">
      <html>
         <link rel="stylesheet" type="text/css" href="styles/main.css" />
   <h2>List of publications</h2>
   <h3>Books</h3><xsl:call-template name="book"/>

   <h2>Journal/Conference Papers</h2>

         <a href="publications_yearwise.html">Year Wise</a> | 
         <a href="publications_areawise.html">Area Wise</a> |
         <a href="publications_categorywise.html">Category Wise</a>
         <ol>
            <xsl:apply-templates select="publication[generate-id(.)=generate-id(key('division',@area)[1])]">
               <xsl:sort select="@area" data-type="numeric" order="descending" />
            </xsl:apply-templates>	
         </ol>
      </html>
   </xsl:template>
   <xsl:template match="publication">
      <h3>
         <xsl:value-of select="@area" />
         (<xsl:value-of select="count(key('division', @area))" />)
      </h3>
      <xsl:for-each select="key('division', @area)">
         <li>
            <xsl:for-each select="./author">
               <xsl:choose>
                  <xsl:when test=".='Uttam Kumar Roy'">
                     <span class="author1">
                        <xsl:value-of select="." />,
                     </span>
                  </xsl:when>
                  <xsl:otherwise>
                     <span class="author">
                        <xsl:value-of select="." />,
                     </span>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each>
            <span class="title">"
               <xsl:value-of select="./title" />",
            </span>
            <span class="conf">
               <xsl:value-of select="./publisher" />,
            </span>
            <a href="{./file}">
               <xsl:value-of select="actionUrl" />
               .pdf
            </a>
         </li>
         <br />
      </xsl:for-each>
   </xsl:template>
</xsl:transform>