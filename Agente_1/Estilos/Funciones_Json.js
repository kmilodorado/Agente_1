var xhr;

function CreateXmlHttp() {
    // Probamos con IE
    try {        // Funcionará para JavaScript 5.0
        xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
    }
    catch (e) {
        try {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        catch (oc) {
            xmlHttp = null;
        }
    }
    // Si no se trataba de un IE, probamos con esto
    if (!xmlHttp && typeof XMLHttpRequest != "undefined") {
        xmlHttp = new XMLHttpRequest();
    }

    return xmlHttp;
}



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

function Esc() {
    xh = CreateXmlHttp();
    xh.open("GET", "../index.aspx", true);//ultimo parametro true asincrono false sincrono
    xh.onreadystatechange = ESC; //despue del = nombre de la funcion que controla la respuesta
    xh.send(null);//post sen el elemento que contiene la informacion
}

function ESC() {
    if (xh.readyState == 4) {
        document.getElementById("bt").innerHTML =xh.responseText;
    }
}
