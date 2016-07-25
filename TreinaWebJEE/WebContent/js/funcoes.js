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