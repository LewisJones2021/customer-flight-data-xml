<!-- XSLT stylesheet version 1.0 with namespace declaration -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Template for matching the root element "/data" -->
    <xsl:template match="/data">
        <html>
            <head>
                <style>
                    /* Style for h2 element */
                    h2 {
                        color: red; /* Text color: red */
                        padding: 5px; /* Padding around the element */
                    }

                    /* Style for td and th elements */
                    td, th {
                        padding: 20px; /* Padding around table cells */
                    }
                </style>
            </head>
            <body>
                <!-- Apply the template for customerData -->
                <xsl:apply-templates select="customerData" />
                <!-- Apply the template for companyData -->
                <xsl:apply-templates select="companyData" />
            </body>
        </html>
    </xsl:template>

    <!-- Template for matching the "customerData" element -->
    <xsl:template match="customerData">
        <h2>Flight Customer Data Table (Below15)</h2>
        <table border="1">
            <tr>
                <th>Customer Name</th>
                <th>Date of birth</th>
                <th>Flight Number</th>
                <th>Destination</th>
                <th>Departing From</th>
            </tr>
            <xsl:for-each select="customer">
                <tr>
                    <td><xsl:value-of select="customerName" /></td>
                    <td><xsl:value-of select="dateOfBirth" /></td>
                    <td><xsl:value-of select="flightNumber" /></td>
                    <td><xsl:value-of select="destination" /></td>
                    <td><xsl:value-of select="departingFrom" /></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>

    <!-- Template for matching the "companyData" element -->
    <xsl:template match="companyData">
        <h2>Company Information (Below15)</h2>
        <table border="1">
            <tr>
                <th>Company Name</th>
                <th>Founded Year</th>
                <th>Number of Clients</th>
                <th>About Company</th>
            </tr>
            <xsl:for-each select="companyInformation">
                <tr>
                    <td><xsl:value-of select="companyName" /></td>
                    <td><xsl:value-of select="foundedYear" /></td>
                    <td><xsl:value-of select="numberOfClients" /></td>
                    <td><xsl:value-of select="aboutCompany" /></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>

</xsl:stylesheet>
