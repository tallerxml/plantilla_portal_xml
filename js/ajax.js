function omplir(opcio) {

  // Obtener la instancia del objeto XMLHttpRequest
  if(window.XMLHttpRequest) {
    peticion_http = new XMLHttpRequest();
  }
  else if(window.ActiveXObject) {
    peticion_http = new ActiveXObject("Microsoft.XMLHTTP");
  }
 
  // Preparar la funcion de respuesta
  peticion_http.onreadystatechange = muestraContenido;
 
  // Realizar peticion HTTP
  peticion_http.open('GET', 'pages/desplegable.php?tipus='+opcio, true);
  peticion_http.send(null);
 
  function muestraContenido() {
    if(peticion_http.readyState == 4) {
      if(peticion_http.status == 200) {
        document.getElementById('cercar').innerHTML =peticion_http.responseText;
      }
    }
  }
}

function temps()
{
var http_request = new XMLHttpRequest();
var url = "http://api.openweathermap.org/data/2.5/weather?q=Girona,es&units=metric"; // URL que envia el fitxer JSON del temps
// retorna {"coord":{"lon":1.11,"lat":41.16},"sys":{"type":1,"id":5495,"message":0.0854,"country":"ES","sunrise":1415082645,"sunset":1415119652}
//,"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"base":"cmc stations",
//"main":{"temp":13,"pressure":997,"humidity":58,"temp_min":13,"temp_max":13},"wind":{"speed":4.6,"deg":250,"var_beg":220,"var_end":290},
// "clouds":{"all":20},"dt":1415127600,"id":3111933,"name":"Reus","cod":200}

 

 // Descarrega les dades JSON del servidor.
http_request.onreadystatechange = handle_json;
http_request.open("GET", url, true);
http_request.send(null);
 
function handle_json() {
  if (http_request.readyState == 4) {
    if (http_request.status == 200) {
      var json_data = http_request.responseText;   // l'objecte json_data guarda les dades rebudes en format JSON
      var the_object = eval("(" + json_data + ")");   // guarda les dades en format objecte
      var json = JSON.parse(json_data);          // parseja les dades per si volem accedir a un valor concret ja separat
       var res = "La temperatura a " + json.name + " és de " + json.main.temp + " ºC " ; // Construim la cadena
       document.getElementById('temps').innerHTML = res ;    // Enviem la cadena construida a la capa amb id = temps
    } else {
      alert("Fora de servei ");   // Si no carrega mostra missatge d'error
    }
    http_request = null;
  }
}
}


function Load_partits() {
	  // Obtener la instancia del objeto XMLHttpRequest
	  if(window.XMLHttpRequest) {
	    peticion_http2 = new XMLHttpRequest();
	  }
	  else if(window.ActiveXObject) {
	    peticion_http2 = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	 
	  // Preparar la funcion de respuesta
	  peticion_http2.onreadystatechange = muestraContenido2;
	 
	  // Realizar peticion HTTP
	  peticion_http2.open('GET', 'pages/taula_partits.php', true);
	  peticion_http2.send(null);
	 
	  function muestraContenido2() {
	    if(peticion_http2.readyState == 4) {
	      if(peticion_http2.status == 200) {
	        document.getElementById('flowers').innerHTML =peticion_http2.responseText;
	      }
	    }
	  }
	}







