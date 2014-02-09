<div class="col-md-9 col-sm-8">
	<h1 class="page-header">
		<g:message code="default.edit.user.label" />
	</h1>
	<form role="form" class="form-horizontal" id="editForm">
		<g:hiddenField name="id" value="${user?.id}" />
		<div class="row">
			<div class="form-group">
				<label for="lionname" class="col-sm-4 control-label"><g:message code="default.lionname.label" /></label>
				<div class="col-lg-3">
					<p class="form-control-static">${user?.lionname}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="form-group">
				<label for="username" class="col-sm-4 control-label"><g:message code="default.username.label" /></label>
				<div class="col-lg-3">
					<g:textField name="username" class="form-control" value="${user?.username}" required="" />
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="form-group">
				<label for="password" class="col-sm-4 control-label"><g:message code="default.password.label" /></label>
				<div class="col-lg-3">
					<input type="password"	name="password" class="form-control" id="password" value="${user?.password}" required>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-10">
					<button type="button" class="btn btn-primary" id="submitButton"><g:message code="default.button.edit.label" /></button>
					<button type="button" class="btn btn-default" id="cancelButton"><g:message code="default.button.cancel.label" /></button>
				</div>
			</div>
		</div>
	</form>
</div>
<script>
	$('#cancelButton').click(function() {
		goToPage("${createLink(uri:'/')}");
	});

	$('#submitButton').click(function() {
		var json = JSON.stringify($('#editForm').serializeJSON());
		var dados = {'json': json};
		$.ajax({
	        url: "${createLink(controller: 'user', action: 'edit')}",
	        type: "POST",
	        data : dados,
	        success: function(data) {
        		$('#headerDiv').html(data.headerPage);
        		showMessage(data.message, 'success');
	        },
	        error: function(data) {
		        showMessage(data.responseText, 'danger');
		    }
	    });
    });
</script>