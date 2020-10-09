<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/registro">
    <html>
      <body>
        <header>
          <h1>Facturas</h1>
          <h3>Responsable: </h3>
        </header>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="factura">
  <p>
    <table style= "width: 500px; border-collapse:collapse;">
  <tr>
  <td></td>
    <td><b>Factura numero:</b> <xsl:value-of select="num"/> <b>Tipo:</b> <xsl:value-of select="@tipo"/><br></br>
        <b>Cliente:</b><br></br>
        <b>Nombre:</b> <xsl:value-of select="cliente/nombre"/>
        <b>Documento:</b> <xsl:value-of select="cliente/documento"/><br></br>
        <b>Telefono:</b> <xsl:value-of select="cliente/telefono"/>
        <b>Email:</b> <xsl:value-of select="cliente/email"/> 
        </td>
  </tr>
  <tr>
    <td>Codigo</td>
    <td>Detalle</td>
    <td>Cantidad</td>
    <td>Precio</td>
    <td>Subtotal</td>
  </tr>
  <xsl:for-each select="lineafactura/codigo">
  <tr>
  <td><xsl:value-of select="."/></td>
  <td><xsl:value-of select="../detalle"/></td>
  <td><xsl:value-of select="../cantidad"/></td>
  <td><xsl:value-of select="../precio"/></td>
  <td><xsl:value-of select="../subtotal"/></td>
  </tr>
  </xsl:for-each>
  <tr>
  <td></td>
  <td></td>
  <td></td>
  <td style="font-size:20px;"><h4>Total</h4></td>
  <td><xsl:value-of select="total"/></td>
  </tr>
</table>
  </p>
</xsl:template>

</xsl:stylesheet>
