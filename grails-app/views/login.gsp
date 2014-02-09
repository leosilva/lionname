<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title><g:message code="default.title.login" /></title>
		<script>
			$(document).ready(function() {
				$('#submitButton').click(function() {
					var json = JSON.stringify($('#loginForm').serializeJSON());
					var dados = {'json': json};
					$.ajax({
				        url: "${createLink(controller: 'user', action: 'login')}",
				        type: "POST",
				        data : dados,
				        success: function(data) {
				    		goToPage("${createLink(uri:'/')}");
				        },
				        error: function(data) {
					        showMessage(data.responseText, 'danger');
					    }
				    });
			    });
			});
		</script>
	</head>
	<body>
	    <div class="container">
	        <div class="row">
				<div class="col-sm-12 media" style="margin-top: 30px;">
					<form role="form" class="form-horizontal" id="loginForm">
						<div class="row">
							<div class="form-group">
								<label for="lionname" class="col-sm-4 control-label"><g:message code="default.lionname.label" /></label>
								<div class="col-lg-3">
									<input type="text" name="lionname" class="form-control" id="lionname" value="${user.lionname}" required>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="form-group">
								<label for="password" class="col-sm-4 control-label"><g:message code="default.password.label" /></label>
								<div class="col-lg-3">
									<input type="password"	name="password" class="form-control" id="password" value="${user.password}" required>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="form-group">
								<div class="col-sm-offset-4 col-sm-10">
									<button type="button" class="btn btn-primary" id="submitButton"><g:message code="default.login.label" /></button>
									<button type="button" class="btn btn-default"><g:message code="default.button.create.account.label" /></button>
								</div>
							</div>
						</div>
					</form>
				</div>
	        </div>
	    </div>
	</body>
</html>