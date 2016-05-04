<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="catalog/cd/title">
        <p><b><xsl:value-of select="."/></b></p>
    </xsl:template>

    <xsl:template match="/">
        <html>
            <body>
                Testing
                <!--<xsl:apply-templates select="catalog/cd/title"/>-->

                <table>
                    <xsl:for-each select="catalog/cd">
                    <tr>
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="price"/></td>
                        <td></td>
                    </tr>
                    </xsl:for-each>
                </table>
                <xsl:for-each select="catalog/cd">

                    <div style="background-color:teal;color:white;padding:4px">
                        <span style="font-weight:bold"><xsl:value-of select="title"/> - </span>
                        <xsl:value-of select="artist"/>
                    </div>
                    <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
                        <p>
                            <xsl:value-of select="country"/>
                            <span style="font-style:italic"> (<xsl:value-of select="price"/> calories per serving)</span>
                        </p>
                    </div>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>