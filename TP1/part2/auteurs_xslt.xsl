<?xml version="1.0" encoding="UTF-8"?>
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
    
    <xsl:template match="/bibliotheque">
        <html>
            <head>
                <h2>Tableau d'auteurs</h2>
            </head>
            <body>
                <table border="1">
                    <tr bgcolor="pink">
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Pays</th>
                        <th>Commentaire</th>
                        <th>Photo</th>
                    </tr>
                    
                    <xsl:for-each select="auteurs/auteur">
                        <tr>
                            <td><xsl:value-of select="nom"/></td>
                            <td><xsl:value-of select="prenom"/></td>
                            <td><xsl:value-of select="pays"/></td>
                            <td><xsl:value-of select="commentaire"/></td>
                            <td>
                                <img height="100" width="100">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="photo"/>
                                    </xsl:attribute>
                                </img>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>