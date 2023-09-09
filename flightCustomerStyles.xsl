<!-- XSLT stylesheet version 1.0 with namespace declaration -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Template for matching the root element "/customerData" -->
    <xsl:template match="/customerData">
        <html>
            <body>
                <!-- HTML head section -->
                <head>
                    <!-- CSS styling -->
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

                <!-- HTML body section -->
                <h2>Flight Customer Data Table (Below15)</h2>
                <table border="1">
                    <tr>
                        <!-- Table header row -->
                        <th>Customer Name</th>
                        <th>Date of birth</th>
                        <th>Flight Number</th>
                        <th>Destination</th>
                        <th>Departing From</th>
                    </tr>
                    <!-- Loop through each "customer" element -->
                    <xsl:for-each select="customer">
                        <tr>
                            <!-- Populate table cells with customer data -->
                            <td><xsl:value-of select="customerName" /></td>
                            <td><xsl:value-of select="dateOfBirth" /></td>
                            <td><xsl:value-of select="flightNumber" /></td>
                            <td><xsl:value-of select="destination" /></td>
                            <td><xsl:value-of select="departingFrom" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
