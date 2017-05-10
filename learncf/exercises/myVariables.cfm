<!---
  Created by djcar on 2/8/2017.
--->
<legend>My Variables</legend>
<cfset totalBookCost=0>
<cfset pricelist="5.95,6.73,4.5,6.75,.85,7.25,11.86,11.78,12.99,3.99">
<cfoutput>
    <cfset currentSum=0>

    <table class="table table-bordered table-striped table-hover">
        <tr>
            <th>Item Number</th>
            <th>Price</th>
            <th>SubTotal</th>
        </tr>
        <cfloop from="1" to="10" index="currentRow">
            <cfset currentPrice=listgetat(pricelist,currentRow)>
            <cfset currentSum=currentSum+currentPrice>
            <tr>
                <td>#currentRow#</td>
                <td>#currentPrice#</td>
                <td>#currentSum#</td>
            </tr>
        </cfloop>
    </table>
</cfoutput>






<!---

<cfoutput>
    <table border="1">
        <tr>
            <th>
                Row Number
            </th>
            <th>Price</th>
            <th>
                SubTotal
            </th>
        </tr>
        <tr>
            <cfset currentBookPrice=5.95>
            <td>1</td>
            <td>#currentBookPrice#</td>
            <cfset totalBookCost=totalBookCost+currentBookPrice>
            <td>#totalBookCost#</td>
        </tr>
        <tr>
            <cfset currentBookPrice=5.95>
            <td>2</td>
            <td>currentBookPrice</td>
            <cfset totalBookCost=totalBookCost+currentBookPrice>
            <td>#totalBookCost#</td>
        </tr>
        <tr>
            <cfset currentBookPrice=4.50>
            <td>2</td>
            <td>#currentBookPrice#</td>
            <cfset totalBookCost=totalBookCost+currentBookPrice>
            <td>#totalBookCost#</td>
        </tr>

<!---
    5.95+6.73+4.5+6.75+.85+7.25+11.86+11.78+12.99+3.99
        <li>5.95   </li>
        <li>6.73 <cfset totalBookCost=totalBookCost+6.73> #totalBookCost#</li>
        <li>4.50 <cfset totalBookCost=totalBookCost+4.50> #totalBookCost#</li>
    </ol>
    --->
</table>
</cfoutput>--->