/**
 * Esta função coloca um conteúdo HTML em algum elemento do DOM, recuperado através do seu ID.
 * @param target
 * @param content
 */
function placeContent(target, content) {
	$('#' + target).html(content);
}

/**
 * Esta função cancela uma ação do usuário e o redireciona para uma nova página, a ser recebida como parâmetro.
 * @param newLocation
 */
function goToPage(newLocation) {
	window.location.href = newLocation
}

/**
 * Função para exibir mensagens no estilo Growl
 * @param message
 * @param type (pode ser 'info', 'danger', 'waring', 'success' ou null)
 */
function showMessage(message, type) {
	$.bootstrapGrowl(message, {
		  type: type, // (null, 'info', 'error', 'success')
		  offset: {from: 'top', amount: 70}, // 'top', or 'bottom'
		  width: 'auto', // (integer, or 'auto')
		  delay: 3000,
		  allow_dismiss: true,
		  stackup_spacing: 10 // spacing between consecutively stacked growls.
		});
}