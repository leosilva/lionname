<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="${resource(dir: 'font-awesome/css/', file: 'font-awesome.min.css')}" type="text/css">
		<g:javascript library="jquery"/>
		<r:require modules="bootstrap"/>
		<r:layoutResources />
		<g:javascript src="jquery.serializeJSON.js"/>
		<g:javascript src="jquery.limit-1.2.source.js"/>
		<g:javascript src="jquery.bootstrap.growl.js"/>
		<g:javascript src="lionmessage.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<div id="headerDiv">
			<g:render template="/shared/header" />
		</div>
		<g:layoutBody/>
		<div id="footerDiv">
			<g:render template="/shared/footer" />
		</div>
		<r:layoutResources />
	</body>
</html>
