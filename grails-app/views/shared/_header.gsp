<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	        </button>
	        <!-- You'll want to use a responsive image option so this logo looks good on devices - I recommend using something like retina.js (do a quick Google search for it and you'll find it) -->
	        <a class="navbar-brand" href="${createLink(uri: '/')}"><g:message code="app.title"/></a>
	    </div>
	    
    	<div class="collapse navbar-collapse navbar-ex1-collapse">
        	<ul class="nav navbar-nav navbar-right">
        		<g:if test="${session.user}">
        			<li><p class="navbar-text" id="headerUsername">${session.user.username}</p></li>
       		        <li class="dropdown">
       		        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
       		        		<span class="glyphicon glyphicon-user"></span>
        		          	<b class="caret"></b>
       		          	</a>
       		          	<ul class="dropdown-menu">
       		          		<li>
			       				<a href="#" id="editProfileLink"><g:message code="default.edit.profile.label"/></a>
			                </li>
		                  	<li class="divider"></li>
		        			<li>
			       				<a href="${createLink(controller: 'user', action: 'logout')}"><g:message code="default.logout.label"/></a>
			                </li>
       		          	</ul>
       		        </li>
        		</g:if>
        		<g:else>
	       			<li>
	       				<a href="${createLink(controller: 'user', action: 'preLogin')}"><g:message code="default.login.label"/></a>
	                </li>
        		</g:else>
          	</ul>
		</div>
	    
	</div>
	<!-- /.container -->
</nav>

<r:script>
	$(document).ready(function() {
		$('#editProfileLink').click(function(e) {
			e.preventDefault();
			$.ajax({
		        url: "${createLink(controller: 'user', action: 'editProfile')}",
		        type: "GET",
		        success: function(data) {
	        		placeContent('mainDiv', data);
		        }
		    });
		});
	});
</r:script>