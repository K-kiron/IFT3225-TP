<?xml version="1.0" encoding="UTF-8"?>

<!--Wenhao XU_20150702, Yuyang XIONG_20151236-->

<?xml-stylesheet type="text/xsl" href="bibliotheque.xml"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output
        omit-xml-declaration="no" method="xml"
        doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
        doctype-system=
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
        indent="yes" encoding="UTF-8"/>
    
    <xsl:param name="intervallePrix" select="//livre[34>prix and prix>22]"/>
    <xsl:param name="motCle" select="//livre[contains(titre,'GATSBY')]"/>
    
    <xsl:template match="/bibliotheque">
        <html>
            <head>
                <h2>Tableau de livres</h2>
            </head>
            <body>
                <table border="1">
                    <tr bgcolor="pink">
                        <th>Titre</th>
                        <th>Annee</th>
                        <th>Prix</th>
                        <th>Auteur</th>
                    </tr>
                    
                    <xsl:for-each select="$intervallePrix">
                        <xsl:variable name="author" select="@auteurs"/>
                        <xsl:sort order="ascending" select="//auteur/nom"/>
                        <tr>
                            <td><xsl:value-of select="titre"/></td>
                            <td><xsl:value-of select="annee"/></td>
                            <td><xsl:value-of select="prix"/></td>
                            <td><xsl:value-of select="//auteur[@ident=$author]/nom"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>