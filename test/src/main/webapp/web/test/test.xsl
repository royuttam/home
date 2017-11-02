<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:transform version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" indent="yes" />

    <xsl:key name="division" match="User" use="@Division" />

    <xsl:template match="Users">
        <AllUsers>
            <xsl:apply-templates select="User[generate-id(.)=generate-id(key('division',@Division)[1])]"/>
        </AllUsers>
    </xsl:template>

    <xsl:template match="User">
        <Division value="{@Division}">
            <xsl:for-each select="key('division', @Division)">
                <User>
                    <id><xsl:value-of select="@id" /></id>
                    <name><xsl:value-of select="@name" /></name>
                </User>
                    <xxxx><xsl:value-of select="./a" /></xxxx>
            </xsl:for-each>
        </Division>
    </xsl:template>

</xsl:transform>