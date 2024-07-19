<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Oceans</title>
        <style>
          body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
          }
          #oceanContainer {
            
            padding: 10px;
            margin: 20px auto;
            width: 80%;
          }
          h1 {
            text-align: center;
          }
        </style>
      </head>
      <body>
        <div id="oceanContainer">
          <fieldset>
            <legend><h1><xsl:value-of select="Oceans/heading"/></h1></legend>
          <xsl:apply-templates select="Oceans/ocean"/>
          </fieldset>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="ocean">
    <div>
      <h2><xsl:value-of select="name"/></h2>
      <p><xsl:value-of select="area"/></p>
      <p><xsl:value-of select="meandepth"/></p>
    </div>
  </xsl:template>
</xsl:stylesheet>