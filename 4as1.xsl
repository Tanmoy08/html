<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:template match="vtu">
  <html><head><title>xslprogram</title></head>
  <body bgcolor="aqua">
    <xsl:for-each select="student">
     <center>
      <label style="color:red;font-size:160%;">USN:</label>
      <span style="color:green;font-size:150%;">
        <xsl:value-of select="usn"/>
      </span><br/>
      <label style="color:red;font-size:160%;">Name:</label>
      <span style="color:yellow;font-size:130%;">
        <xsl:value-of select="name"/>
      </span><br/>
      <label style="color:red;font-size:160%;">Branch:</label>
      <span style="color:white;font-size:150%;">
        <xsl:value-of select="branch"/>
      </span><br/>
      <label style="color:red;font-size:160%;">College:</label>
      <span style="color:green;font-size:130%;">
        <xsl:value-of select="college"/>
      </span><br/>
      <label style="color:red;font-size:160%;">Semester:</label>
      <span style="color:green;font-size:150%;">
        <xsl:value-of select="sem"/>
      </span><br/>
      <label style="color:red;font-size:160%;">Year:</label>
      <span style="color:green;font-size:130%;">
        <xsl:value-of select="year"/>
      </span><br/>
      <label style="color:red;font-size:160%;">E-mail:</label>
      <span style="color:green;font-size:150%;">
        <xsl:value-of select="email"/>
      </span><br/>
     </center>
    </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
