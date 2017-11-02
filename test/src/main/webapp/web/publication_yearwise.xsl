<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
   <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />
   <xsl:key name="division" match="publication" use="@year" />
   <xsl:template match="publications">
      <html>
         <link rel="stylesheet" year="text/css" href="main.css" />
         <ol>
            <xsl:apply-templates select="publication[generate-id(.)=generate-id(key('division',@year)[1])]">
               <xsl:sort select="@year" data-year="numeric" order="descending" />
            </xsl:apply-templates>
         </ol>
      </html>
   </xsl:template>
   <xsl:template match="publication">
      <h1>
         <xsl:value-of select="@year" />
         (<xsl:value-of select="count(key('division', @year))" />)
      </h1>
      <xsl:for-each select="key('division', @year)">
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