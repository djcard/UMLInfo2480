<cftry>
    <cfdump var="#URL#">
    <cfquery name="allbooks" datasource="#application.dsource#">
        select*from books order by title
    </cfquery>
    <cfdump var="#allbooks#">
        <div id="main" class="col-Ig-9 col-Ig-push-3">
            Main Area
        </div>
        <div id="leftgutter" class="col-Ig-3 col-Ig-pull-9">
            #sidenav()#

        </div>
        <cfcatch type="any">
            <cfoutput>
                <cfdump var="#cfcatch#">
                    #cfcatch.Message#
            </cfoutput>
        </cfcatch>
</cftry>

<cffunction name="sidenav" access="private">
    Hello World!
    <div>
        Book List
    </div>
    <cfoutput>
        <ul class="nav nav-stacked">
            <cfloop query="allbooks">
                <li><a href="#cgi.SCRIPT_NAME#?book=#isbn13#">#trim(title)#</a></li>
            </cfloop>
        </ul>
    </cfoutput>
</cffunction>