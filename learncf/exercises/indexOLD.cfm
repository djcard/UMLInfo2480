<!---
  Created by djcar on 2/8/2017.
--->
<cfdump var="#URL#">



<link href="/includes/bootstrap/css/bootstrap.css" rel="stylesheet" />
<h1>CF Exercises</h1>
<div class="row">
    <div class="col-md-4">
        <ul>
            <li><a href="index.cfm?page=mydate">My Date</a></li>
            <li><a href="index.cfm?page=myvariables">My Variables</a></li>
            <li><a href="index.cfm?page=myobjects">My Objects</a></li>
        </ul>


    </div>
    <div class="col-md-8">
        <cfinclude template="#url.page#.cfm" />


    </div>
</div>
"