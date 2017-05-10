<!---
  Created by djcar on 2/13/2017.
--->

<cfoutput>
    <form action="#cgi.script_name#?p=myforms" method="post">
        <legend>Please Enter Your Name</legend>
        <input type="text" name="FirstName" />

        <cfif isdefined('form.FirstName')>
            Thanks #form.FirstName#. Please enter you Last Name:
            <input type="text" name="LastName" />
        </cfif>
        <input type="submit" />
   </form>
</cfoutput>

<cfdump var="#url#" label="URL">
<cfdump var="#form#" label="FORM">
