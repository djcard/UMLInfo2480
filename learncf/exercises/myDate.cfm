<!---
  Created by djcar on 2/8/2017.
--->
<legend>My Dates</legend>
<cfoutput>
    <cfset theDateIAmCurrentlyDealingWith=createDate(1974,12,7)>
    #dateFormat(theDateIAmCurrentlyDealingWith,"mmmm/d/yyyy")#<br/>
    #dateFormat(theDateIAmCurrentlyDealingWith,"mmm/d/yyyy")#<br/>
    #dateFormat(theDateIAmCurrentlyDealingWith,"mm/d/yyyy")#<br/>
    #dateFormat(theDateIAmCurrentlyDealingWith,"m/d/yyyy")#<br/>
    #dateFormat(theDateIAmCurrentlyDealingWith,"E")#<br/>
    #dateFormat(theDateIAmCurrentlyDealingWith,"W")#<br/>
</cfoutput>