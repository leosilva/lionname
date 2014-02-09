<div class="col-md-9 col-sm-8">
	<h1 class="page-header">
		<g:message code="default.post.new.label"/>
	</h1>
	<g:if test="${flash.message}">
		<div class="alert alert-danger alert-dismissable">
			${flash.message}
		</div>
	</g:if>
	<g:form role="form" class="form-vertical" id="postForm">
		<div class="row">
			<div class="form-group col-lg-12">
				<label for="message"><g:message code="default.message.label" /></label>
				<g:textArea name="message" class="form-control" rows="4" value="${post.message}" />
				<small><span id="charsLeft"></span> <g:message code="chars.left.message"/></small>
			</div>
			<p id="remLen"></p>
			<div class="clearfix"></div>
			<div class="form-group">
				<div class="col-sm-10">
					<button type="button" class="btn btn-primary" id="submitButton"><g:message code="default.button.post.label" /></button>
					<button type="button" class="btn btn-default" id="cancelButton"><g:message code="default.button.cancel.label" /></button>
				</div>
			</div>
		</div>
	</g:form>
</div>
<script>
	$('#cancelButton').click(function() {
		goToPage("${createLink(uri:'/')}");
	});
	$('#message').limit('140','#charsLeft');
</script>