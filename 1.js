var radio = document.getElementById ('prim');

for (var i=0; i<radio.length; i++) {
	radio[i].onchange = testRadio;
}

function testRadio() {
	console.log (this.value);
}

document.getElementById('one').onclick = checkRadio;

function checkRadio(){
	var m = document.getElementsByClassName('prim');
	for (var i=0; i<m.length; i++){
		if (m[i].checked ) {
			alert( m[i].value );
			break;
		}
	}
}
	
