<div class="col-lg-6">
	<h1 class="page-header">
		<g:message code="default.friends.connections.label" />
	</h1>
	<div id="connectDiv">
		<hr>
		<table class="table table-bordered table-hover">
	    	<thead>
	    		<tr>
	    			<th>Nome</th>
	    			<th>&nbsp;</th>
	    		</tr>
	    	</thead>
	    	<tbody>
		    	<tr>
		    		<td>Maria José</td>
		    		<td>
		    			<a href="#" tooltip="true" data-toggle="tooltip"
							data-placement="right" title="${message(code: 'default.unfollow.message.label')}">
						<i class="fa fa-arrow-down"></i></a>
		    		</td>
		    	</tr>
	    	</tbody>
	    </table>
	</div>
</div>
<div class="col-lg-3 sidebar">
	<div class="well">
		<h4><g:message code="default.find.friends.label"/></h4>
	    <div class="input-group">
	    	<input type="text" class="form-control">
	        <span class="input-group-btn">
	            <button class="btn btn-default" type="button"><i class="fa fa-search"></i>
	            </button>
	        </span>
	    </div>
	</div>
	<div class="well">
		<h4><g:message code="default.connect.to.friends.label"/></h4>
	    <table class="table table-bordered table-hover">
	    	<thead>
	    		<tr>
	    			<th>Nome</th>
	    			<th>&nbsp;</th>
	    		</tr>
	    	</thead>
	    	<tbody>
		    	<tr>
		    		<td>Leo Silva</td>
		    		<td>
		    			<a href="#" tooltip="true" data-toggle="tooltip"
							data-placement="right" title="${message(code: 'default.follow.message.label')}">
						<i class="fa fa-arrow-right"></i></a>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>Maria José</td>
		    		<td>
		    			<span class="label label-default"><g:message code="default.following.label"/></span>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>José Maria</td>
		    		<td>
		    			<a href="#" tooltip="true" data-toggle="tooltip"
							data-placement="right" title="${message(code: 'default.follow.message.label')}">
						<i class="fa fa-arrow-right"></i></a>
		    		</td>
		    	</tr>
	    	</tbody>
	    </table>
	</div>
</div>
<script>
	$('a[tooltip=true]').tooltip()
</script>