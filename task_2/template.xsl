<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <link rel="stylesheet" href="../base.css" />
                <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
            </head>
            <body>
                <h4 id="author" title="GossJS">Низаев Ильвир</h4>
                <a class="btn btn-red absolute btn__root" href="../">На главную</a>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="графика">
        <svg>
            <xsl:apply-templates select="@*|node()" />
        </svg>
    </xsl:template>

    <xsl:template match="графика/эллипс">
        <ellipse>
            <xsl:apply-templates select="@*|node()" />
        </ellipse>
    </xsl:template>

    <xsl:template match="@ширина">
        <xsl:attribute name="width">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@высота">
        <xsl:attribute name="height">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@заливка">
        <xsl:attribute name="fill">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@ободок">
        <xsl:attribute name="stroke">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@ширина-ободка">
        <xsl:attribute name="stroke-width">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@cx">
        <xsl:attribute name="cx">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@cy">
        <xsl:attribute name="cy">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@rx">
        <xsl:attribute name="rx">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@ry">
        <xsl:attribute name="ry">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>