<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <style>

table {
  border-collapse: collapse;
  width: 100%;
  font-family: Arial;
  border-color: black;
}
th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: black;
}
th, td {
  border: 1px solid #ddd;
  padding: 8px;
  text-color: black;
}
 tr:nth-child(even) {background-color: #9acd32;}
tr:hover {background-color: #ddd;}
.header {
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
  font-family:Arial;
}
  </style>
  <body>
    <div class="header">
  <h1>Player Contract Details</h1>
</div>
    <table>
      <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Country</th>
        <th>Club</th>
        <th>Contract Duration</th>
        <th>Year of Renewal</th>
      </tr>
      <xsl:for-each select="contractdet/player">
      <xsl:sort select="yearofrenewal"/>
      <tr>
       <td><xsl:value-of select="name"/></td>
       <td><xsl:value-of select="age"/></td>
       <td><xsl:value-of select="country"/></td>
       <td><xsl:value-of select="club"/></td>
       <td><xsl:value-of select="contractduration"/></td>
       <td><xsl:value-of select="yearofrenewal"/></td>  
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>