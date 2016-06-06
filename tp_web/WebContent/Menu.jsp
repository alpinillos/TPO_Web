<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/StyleSheet.css" rel="stylesheet" type="text/css">
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
		<div style="display: none;"></div>
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
		<div id="cont-template-juego">
			<div id="titulo-template">Menu</div>
			<div id="divLogin">
				<div id="contenedor-divLogin">

					<div id="divData">

						<div id="tit-plan-internet">
							<div></div>
						</div>
						<div id="Jugadores">
							<span id="lblJugadores">Jugador actual: jugador1</span> <br /> 
						</div>
						<div id="Jugadores">
							<span id="lblJugadores">Seleccione Opción</span> <br /> 
						    <input type="radio" name="grupo" value="grupo1" checked> Crear pareja<br>
  							<input type="radio" name="grupo" value="grupo2"> ..<br>
 							<input type="radio" name="grupo" value="grupo3"> ...
						</div>
						<div id="btn-continuar">
							<button class="cssbox2" id="btnContinuar">Aceptar</button>

						</div>

						<div id="validacion"></div>
					
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