<div class="col-md-3 sidebar">
	<ul class="nav nav-stacked nav-pills">
		<li><a href="${createLink(uri: '/')}" id="homeLink"><g:message code="default.index.label"/></a></li>
		<li><a href="#" id="aboutLink"><g:message code="default.about.label"/></a></li>
		<g:if test="${session.user}">
			<li class="disabled"><a href="#"><g:message code="default.post.label"/></a></li>
			<li><a href="#" id="writePostLink"><g:message code="default.post.write.label"/></a></li>
			<li class="disabled"><a href="#"><g:message code="default.friends.label"/></a></li>
			<li><a href="#" id="connectionsLink"><g:message code="default.friends.connections.label"/></a></li>
		</g:if>
	</ul>
</div>
<r:script>
	$(document).ready(function() {
		$('#aboutLink').click(function(e) {
			e.preventDefault();
			$.ajax({
		        url: "${createLink(controller: 'menu', action: 'about')}",
		        type: "GET",
		        success: function(data) {
	        		placeContent('mainDiv', data);
		        }
		    });
		});
		
		$('#writePostLink').click(function(e) {
			e.preventDefault();
			$.ajax({
		        url: "${createLink(controller: 'post', action: 'write')}",
		        type: "GET",
		        success: function(data) {
	        		placeContent('mainDiv', data);
		        }
		    });
		});

		$('#connectionsLink').click(function(e) {
			e.preventDefault();
			$.ajax({
		        url: "${createLink(controller: 'connection', action: 'listConnections')}",
		        type: "GET",
		        success: function(data) {
	        		placeContent('mainDiv', data);
		        }
		    });
		});
		
	});
</r:script>