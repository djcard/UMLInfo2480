<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>UML Database Course - name</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link href="includes/css/class.css" type="text/css" rel="stylesheet">
    <script src="includes/js/class.js" type="text/javascript"></script>
</head>
<cfparam name="content" default="" />
<cfif content neq ''>
	<cffile action="read" file="#expandpath('.')#/includes/#content#" variable="content" />
</cfif>

<cfdirectory directory="#expandpath('.')#" name="alldirs" recurse="no" type="dir">

<body>
	<div id="wrapper" class="container">
    	<cfoutput>
			<div id="adminnav" style="float:none; clear:both; height:50px; ">
				<ul class="nav nav-pills" style="margin-left:auto; display:block; ">
					<li style="float:right"><a>Welcome #session.firstname#</a></li>
					<li style="float:right"><a href="https://uml.umassonline.net/" target="_blank">Class Blackboard Site</a> </li>
				</ul>
			</div>
		
        <div id="topheader">Class INFO 2480 Web Site Database Implementation - Local Host Table of Contents Page</div></cfoutput>
		<div id="mainarea" class="row">
			<div id="leftgutter" class="col-lg-3">
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link" onclick="getarticle('aboutpage.cfm')" target="_blank">What is this page?</a></li>
					<cfoutput query="alldirs">
						<cfif name neq 'includes'>
							<li class="nav-item">
									<a href="#name#" class="nav-link" target="_blank">#name#</a></li>
						</cfif>
					</cfoutput>
				<li><hr/></li>
                <!---
					Add your custom links below this line.
					To keep the same formatting as the above items, use this format:
					 <li><a href="link to folder/file">Name of link </a></li>
					
				--->

				</ul>
			</div>
			<div id="center" class="col-lg-9">
            	<cfoutput>
					<cfif content neq ''>
    	            	#content#
        	        </cfif>
				</cfoutput>
            </div>
		</div>
	</div>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
					integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
					crossorigin="anonymous"></script>
</body>
</html>
