<!---
  Created by djcar on 2/13/2017.
--->

<cfquery name="myBook" datasource="dcard">
    select * from books where isbn13='abcdefg'
</cfquery>

<cfdump var="#myBook#">