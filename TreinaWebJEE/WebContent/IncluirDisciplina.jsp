<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Incluir Disciplina</title>
<link href="css/Estilos.css" rel="stylesheet" type="text/css">
<script src="js/funcoes.js" type="text/javascript"></script>
</head>
<body>
	<fieldset style="width: 500px;">
		<legend class="caixa">Informações da Disciplina</legend>
		<form action="incluirDisciplina" method="post">
			<div class="divs">
				<label class="textoDiv">Código:</label><input type="text" name="codigoDisciplina" maxlength="7" style="width: 60px;"/>
			</div>
			<div class="divs">
				<label class="textoDiv">Disciplina:</label><input type="text" name="nomeDisciplina" style="width: 330px;"/>
			</div>
			<div class="divs">
				<label class="textoDiv">Tipo:</label>
				<select style="margin-left: -4px;">
					<option value="vazio"></option>
					<option value="min">Mínima</option>
					<option value="max">Máxima</option>
					<option value="etv">Eletiva</option>
					<option value="opt">Optativa</option>
				</select>
			</div>
			<div class="divs">
				<label class="textoDiv">Modalidade:</label>
				<select style="margin-left: -4px;">
					<option value="vazio"></option>
					<option value="pre">Presencial</option>
					<option value="ead">Total EAD</option>
				</select>
			</div>			
			<div class="divs">
				<label class="textoDiv">Pré Requisito: </label>
				<input type="radio" name="preRequisito" value="1" style="width:10px;" onchange="showInput(this, name);"/>Sim
				<input type="radio" name="preRequisito" value="0" style="width:10px;" onchange="showInput(this, name);"/>Não
				<div class="divs" id='codigoPreRequisito' style="display: none; text-align: center">
					Código:
					<input type='text' name='codigoPreRequisito' maxlength='7' style='width: 60px;'/>
				</div>
			</div>
			<div class="divs">
				<label class="textoDiv">Valor: </label>
				R$ <input type="text" name="valor" maxlength="6" style="width: 60px;"/>
			</div>
			<div class="divs">
				<label class="textoDiv">Período: </label>
				<input type="radio" name="periodo" value="2" style="width:10px;" onchange="showInput(this, name);"/>Sim
				<input type="radio" name="periodo" value="3" style="width:10px;" onchange="showInput(this, name);"/>Não
				<div class="divs" id='temPeriodo' style="display: none; text-align: center">
					Período:
					<input type='text' name='temPeriodo' maxlength='1' style='width: 15px;'/>
				</div>
			</div>
			<div class="divs">
				<label class="textoDiv">Desconto: </label>
				<input type="text" name="desconto" maxlength="5" style="width: 35px" />%
			</div>
			<div>
				<input type="submit" value="Incluir" />
				<input type="submit" value="Limpar" />
				<input type="submit" value="Voltar" />
			</div>
		</form>
	</fieldset>
</body>
</html>