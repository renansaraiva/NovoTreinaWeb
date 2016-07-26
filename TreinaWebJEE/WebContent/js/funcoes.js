function showInput(element, name) { 
	var opc = element.value;
	if (name == "preRequisito") {
		if (opc == 1) {
			document.getElementById("codigoPreRequisito").style.display = 'block';
		} else {
			document.getElementById("codigoPreRequisito").style.display = 'none'; 
		}
	} else if (name == "periodo") {
		if (opc == 2) {
			document.getElementById("temPeriodo").style.display = 'block';
		} else {
			document.getElementById("temPeriodo").style.display = 'none'; 
		}
	}
}

function validaConsulta(element, name) {
	var x = document.getElementById("codigoDisciplina").value;
	if (x == null) {
		alert("O campo Código da disciplina está vazio. Por vafor, preencha-o para realizar a consulta.");
		stop();
	}
}