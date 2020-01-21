<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Welcome</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link href="includes/css/class.css" type="text/css" rel="stylesheet">
    <script src="includes/js/class.js" type="text/javascript"></script>
</head>
<cfparam name="content" default="" />
<cfif content neq ''>
	<cffile action="read" file="#expandpath('.')#/includes/#content#" variable="content" />
</cfif>

<cfdirectory directory="#expandpath('.')#" name="alldirs" recurse="no" type="dir">

<body>
	<div id="wrapper" class="col-lg-12">
		<div class="jumbotron">
			<h1>You Made it</h1>
			<p>THis folder is the root of the </p>
		</div>
	</div>
</body>
</html>