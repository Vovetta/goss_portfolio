<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width" />
                <title>Портфолио: Вольдемар</title>
                <link rel="stylesheet" href="/public/css/main.css" />
                <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/3.2.0/es5/mml-svg.min.js" />
            </head>
            <body>
                <div class="container">
                    <header>
                        <h4 id="author" title="GossJS">Владимир Ковязин</h4>
                    </header>
                    <main>
                        <section>
                            <math xmlns="http://www.w3.org/1998/Math/MathML">
                                <xsl:apply-templates />
                            </math>
                        </section>
                    </main>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="операнд">
        <mi>
            <xsl:value-of select="current()" />
        </mi>
    </xsl:template>
    <xsl:template match="оператор">
        <mo>
            <xsl:value-of select="current()" />
        </mo>
    </xsl:template>
    <xsl:template match="корень">
        <msqrt>
            <xsl:apply-templates />
        </msqrt>
    </xsl:template>
    <xsl:template match="строка">
        <mrow>
            <xsl:apply-templates />
        </mrow>
    </xsl:template>
    <xsl:template match="дробь">
        <mfrac>
            <xsl:apply-templates />
        </mfrac>
    </xsl:template>
    <xsl:template match="число">
        <mn>
            <xsl:value-of select="current()" />
        </mn>
    </xsl:template>
    <xsl:template match="низверх">
        <munderover displaystyle="true">
            <xsl:apply-templates />
        </munderover>
    </xsl:template>
    <xsl:template match="низ">
        <msub>
            <xsl:apply-templates />
        </msub>
    </xsl:template>
    <xsl:template match="верх">
        <msup>
            <xsl:apply-templates />
        </msup>
    </xsl:template>
</xsl:stylesheet>