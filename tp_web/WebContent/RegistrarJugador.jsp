<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/StyleSheet.css" rel="stylesheet"
	type="text/css">
<title>Truco</title>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery-ui.js"></script>
<script language="javascript" type="text/javascript">
	
</script>
<script>
	$(document).ready(function() {
		$('#btnU').click(function() {
			var evt = 'btn';
			var apodo = $("input#apodo").val();
			$.get('JsonServlet', {
				event : evt,
				nroHabitacion : txtNroHab
			}, function(responseJson) {
				$("#div").css("display", "block");
				var $select = $('#ddlPr');
				$select.find('option').remove();
				$.each(responseJson, function(key, value) {
					$('<option>').val(key).text(value).appendTo($select);
				});
			});
		});
	});
</script>
</head>
<body>
	<div id="lenguage">
		<div style="display: none;">
		</div>
		<div class="idioma">
			<a href="javascript:ChangeLanguage('pt-BR');" class="n2portugues">
				<img title="Portugues" src="images/BR.png"></img>
			</a>
		</div>
		<div class="idioma">
			<a href="javascript:ChangeLanguage('en-US');" class="n2english">
				<img title="English" src="images/US.png"></img>
			</a>
		</div>
		<div class="idioma">
			<a href="javascript:ChangeLanguage('es-AR');" class="n2espanol">
				<img title="Español" src="images/ES.png"></img>
			</a>
		</div>
	</div>
	<div id="spgm_container">
		<div id="iso1"></div>
		<div id="iso2"></div>
	</div>
	<div id="contenedor_tit_img">

		<div id="titulo_img">Truco Online</div>
	</div>
	<div id="contene" style="width: 960px; margin: auto;">
		<div id="contenedor-template">
			<div id="titulo-template">Registrar nuevo jugador</div>
			<div id="Tabs">
				<button id="btnJugadorExistente" class="cssbox5">Registración</button>

			</div>
			<div id="Tabs"></div>
			<div id="divLogin">
				<div id="contenedor-divLogin">

					<div id="divData">

						<div id="tit-plan-internet">
							<div></div>
						</div>
						<div id="mail">

							<span id="lblMail">Mail</span> <br /> <input
								type="text" id="txtMail" name="txtMail">

						</div>
						<div id="apodo">
							<span id="lblapodo">Apodo</span> <br /> <input
								type="text" id="txtApodo" name="txtApodo">

						</div>
						<div id="password">
							<span id="lblpassword1">Password</span> <br /> <input
								type="text" id="txtPassword" name="txtPassword">
						</div>
						<div id="password">
							<span id="lblpassword2">Ingrese nuevamente el password</span> <br /> <input
								type="text" id="txtPassword2" name="txtPassword2">
						</div>
						<div id="btn-continuar">
							<button class="cssbox2" id="btnConnectar">Validación</button>

						</div>


						<div id="validacion"></div>
						<div id="terms">

							<input type="checkbox" id="chkAgreement" checked> <span>I
								Agree to the </span> <a style="color: #FFF;" href="../terms_es.html"
								onclick="window.open(this.href, this.target, 'width=1100,height=900', resizable=0); return false;">

								<b>Terminos y condiciones.</b>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<img src="images/social_footer.jpg" />
	</div>
	<%--<xsl:value-of select="/Root/Page[@name='InternetConnection.aspx']/Control[@name='cvAgreement']/@value" />--%>
</body>
</html>