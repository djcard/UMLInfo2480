<cfcomponent>
	<cfset this.name="%%SiteName%%">
	<cfset this.dsource='%%SiteName%%'>
    <cfset this.sessionmanagement="true">
	<cffunction name="onApplicationStart">
    	<cfset application.dsource='%%SiteName%%'>
    </cffunction>
    
</cfcomponent>