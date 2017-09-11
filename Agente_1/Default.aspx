<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Agente_1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agente N°1</title>
    <link rel="stylesheet" href="EstiloModal/sweetalert.css">
    <script src="EstiloModal/sweetalert.min.js"></script>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="Estilos/assets/lib/bootstrap/css/bootstrap.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="Estilos/assets/lib/font-awesome/css/font-awesome.css">

    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="Estilos/assets/css/main.css">

    <link rel="stylesheet" href="Estilos/assets/css/main.min.css">

    <!-- metisMenu stylesheet -->
    <link rel="stylesheet" href="Estilos/assets/lib/metismenu/metisMenu.css">

    <!-- onoffcanvas stylesheet -->
    <link rel="stylesheet" href="Estilos/assets/lib/onoffcanvas/onoffcanvas.css">
    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="Estilos/assets/lib/animate.css/animate.css">
    <link rel="stylesheet" href="Estilos/assets/css/style-switcher.css">
    <link rel="stylesheet/less" type="text/css" href="Estilos/assets/less/theme.less">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/2.7.1/less.js"></script>
    <link rel="stylesheet" href="Estilos/Estilo.css" type="text/css" />
    <link href='Imagenes/WeChat.png' rel='shortcut icon' type='image/x-icon'>
    <link rel="stylesheet/less" type="text/css" href="Estilos/assets/less/theme.less">
    <script type="text/javascript">
        function ini() {
            inicio = true;
            document.getElementById("bt").innerHTML = " ";
        }

        var int = self.setInterval("refresh()", 1000);
        function refresh() {
            if (inicio) {
                Esc();
            }
        } 
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 textoo">
                        <div class="col-xs-12">
                            <div class="box dark">
                                <header class="alert-info">
                                    <div class="col-md-12 col-md-offset-0">
                                        <div>
                                            <center><h1>AGENTE N°1</h1></center>
                                        </div>
                                    </div>
                                </header>

                                <div class="body alert-info">
                                    <div class="box-body" style="background-color: rgba(212, 218, 229, 0.5)">
                                        <br />
                                        <div class="col-md-offset-1">
                                            <label>RED HAMMING</label>
                                        </div>
                                        <br />

                                        <ul class="nav nav-tabs" id="iconsTab">
                                            <li class="active">
                                                <a href="#NeuUno" data-toggle="tab">Neurona 1</a>
                                            </li>
                                            <li>
                                                <a href="#NeuDos" data-toggle="tab">Neurona 2</a>
                                            </li>
                                            <li>
                                                <a href="#NeuTres" data-toggle="tab">Neurona 3</a>
                                            </li>
                                            <li>
                                                <a href="#NeuCuatro" data-toggle="tab">Neurona 4</a>
                                            </li>
                                            <li id="bt">
                                                <input class="btn btn-lg btn-metis-2 btn-round btn-line" onclick="ini()" value="Iniciar" />
                                            </li>

                                        </ul>

                                        <div class="tab-content">


                                            <!--  Neurona 1                                       -->

                                            <div class="tab-pane active" id="NeuUno">


                                                <div class="row">
                                                    <div class="col-md-5 col-md-offset-2 control-label textoo">
                                                        <div class="form-group">
                                                            <image src="Imagen/logo-perceptron.png" />
                                                            <label>N° 1</label>
                                                        </div>

                                                    </div>

                                                    <div class="col-md-5 col-md-offset-0 control-label">
                                                        <div class="form-group">
                                                            <br />
                                                            <label>ESTADO:</label>
                                                            <br />
                                                            <br />
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4);">
                                                            <div class="col-md-offset-1">
                                                                <label>ENTRADAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>E0 = 1</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>PESOS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 col-md-5 ">
                                                                    <div class="form-group">
                                                                        <label>W0 = 0,03</label>
                                                                        <br />
                                                                        <label>W1 = 0,68</label>
                                                                        <br />
                                                                        <label>W2 = 0,43</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-offset-6 col-md-0 ">
                                                                    <div class="form-group">
                                                                        <label>W3 = 0,45</label>
                                                                        <br />
                                                                        <label>W4 = 0,71 </label>
                                                                        <br />
                                                                        <label></label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>BIAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>b = 1</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />


                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>FÓRMULA SALIDA</label>
                                                            </div>
                                                            <div class="col-md-offset-1 ">
                                                                <br />
                                                                <label>Y0 = (E0 * W0) + (Y0 * W1) + (Y1 * W2) + (Y2 * W3) + (Y3 * W4) + b</label>
                                                                <br />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>SALIDAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>Y0 = 1</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />


                                            </div>

                                            <!-- Neurona 2 -->
                                            <div class="tab-pane" id="NeuDos">

                                                <div class="row">
                                                    <div class="col-md-5 col-md-offset-2 control-label textoo">
                                                        <div class="form-group">
                                                            <image src="Imagen/logo-perceptron.png" />
                                                            <label>N° 2</label>
                                                        </div>

                                                    </div>

                                                    <div class="col-md-5 col-md-offset-0 control-label">
                                                        <div class="form-group">
                                                            <br />
                                                            <label>ESTADO:</label>
                                                            <br />
                                                            <br />
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4);">
                                                            <div class="col-md-offset-1">
                                                                <label>ENTRADAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>E1 = 0</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>PESOS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 col-md-5 ">
                                                                    <div class="form-group">
                                                                        <label>W5 = 0,65</label>
                                                                        <br />
                                                                        <label>W6 = 0,8</label>
                                                                        <br />
                                                                        <label>W7 = 0,59</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-offset-6 col-md-0 ">
                                                                    <div class="form-group">
                                                                        <label>W8 = 0,67</label>
                                                                        <br />
                                                                        <label>W9 = 0,35</label>
                                                                        <br />
                                                                        <label></label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>BIAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>b = 1</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />


                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>FÓRMULA SALIDA</label>
                                                            </div>
                                                            <div class="col-md-offset-1 ">
                                                                <br />
                                                                <label>Y1 = (E1 * W5) + (Y0 * W6) + (Y1 * W7) + (Y2 * W8) + (Y3 * W9) + b</label>
                                                                <br />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>SALIDAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>Y1 = 1</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />



                                            </div>

                                            <!-- Neurona 3 -->
                                            <div class="tab-pane" id="NeuTres">

                                                <div class="row">
                                                    <div class="col-md-5 col-md-offset-2 control-label textoo">
                                                        <div class="form-group">
                                                            <image src="Imagen/logo-perceptron.png" />
                                                            <label>N° 3</label>
                                                        </div>

                                                    </div>

                                                    <div class="col-md-5 col-md-offset-0 control-label">
                                                        <div class="form-group">
                                                            <br />
                                                            <label>ESTADO:</label>
                                                            <br />
                                                            <br />
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4);">
                                                            <div class="col-md-offset-1">
                                                                <label>ENTRADAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>E2 = 0</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>PESOS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 col-md-5 ">
                                                                    <div class="form-group">
                                                                        <label>W10 = 0,13</label>
                                                                        <br />
                                                                        <label>W11 = 0,7</label>
                                                                        <br />
                                                                        <label>W12 = 0,45</label>
                                                                        <br />
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-offset-6 col-md-0 ">
                                                                    <div class="form-group">
                                                                        <label>W13 = 0,99</label>
                                                                        <br />
                                                                        <label>W14 = 0,24</label>
                                                                        <br />
                                                                        <label> </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />
                                                
                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>BIAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>b = 1</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />


                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>FÓRMULA SALIDA</label>
                                                            </div>
                                                            <div class="col-md-offset-1 ">
                                                                <br />
                                                                <label>Y2 = (E2 * W10) + (Y0 * W11) + (Y1 * W12) + (Y2 * W13) + (Y3 * W14) + b</label>
                                                                <br />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>SALIDAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>Y2 = 1</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />



                                            </div>

                                            <!-- Neurona 4 -->
                                            <div class="tab-pane" id="NeuCuatro">

                                                <div class="row">
                                                    <div class="col-md-5 col-md-offset-2 control-label textoo">
                                                        <div class="form-group">
                                                            <image src="Imagen/logo-perceptron.png" />
                                                            <label>N° 4</label>
                                                        </div>

                                                    </div>

                                                    <div class="col-md-5 col-md-offset-0 control-label">
                                                        <div class="form-group">
                                                            <br />
                                                            <label>ESTADO:</label>
                                                            <br />
                                                            <br />
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4);">
                                                            <div class="col-md-offset-1">
                                                                <label>ENTRADAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>E3 = 0</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>PESOS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 col-md-5 ">
                                                                    <div class="form-group">
                                                                        <label>W15 = 0,19</label>
                                                                        <br />
                                                                        <label>W16 = 0,45</label>
                                                                        <br />
                                                                        <label>W17 = 0,37</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-offset-6 col-md-0 ">
                                                                    <div class="form-group">
                                                                        <label>W18 = 0,26</label>
                                                                        <br />
                                                                        <label>W19 = 0,21</label>
                                                                        <br />
                                                                        <label> </label>
                                                                        <br />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />
                                                
                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>BIAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>b = 1</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />


                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>FÓRMULA SALIDA</label>
                                                            </div>
                                                            <div class="col-md-offset-1 ">
                                                                <br />
                                                                <label>Y3 = (E3 * W15) + (Y0 * W16) + (Y1 * W17) + (Y2 * W18) + (Y3 * W19) + b</label>
                                                                <br />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                            <div class="col-md-offset-1">
                                                                <label>SALIDAS</label>
                                                                <br />
                                                                <div class="col-md-offset-2 ">
                                                                    <label>Y3 = 1</label>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />

                                            </div>

                                        </div>

                                        <br />

                                    </div>
                                </div>

                                <div class="body alert-info">

                                    <div class="box-body" style="background-color: rgba(212, 218, 229, 0.5)">
                                        <br />
                                        <div class="col-md-offset-1">
                                            <label>RED ADALINE</label>
                                        </div>
                                        <br />

                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                    <div class="col-md-offset-1">
                                                        <label>FÓRMULA RESULTANTE</label>
                                                    </div>
                                                    <div class="col-md-offset-1 ">
                                                        <br />
                                                        <label>Resultante = (Y0 * W1) + (Y1 * W7) + (Y2 * W13) + (Y3 * W19)</label>
                                                        <br />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />

                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                    <div class="col-md-offset-1">
                                                        <label>RESULTANTE</label>
                                                        <br />
                                                        <div class="col-md-offset-2 ">
                                                            <label>Resultante = 1,53</label>
                                                            <br />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                    <div class="col-md-offset-1">

                                                        <label>PIVOTE</label>
                                                        <br />
                                                        <div class="col-md-offset-2 ">
                                                            <label>Pivote = 2</label>
                                                            <br />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                    <div class="box-footer">
                                                        <div class="col-md-offset-1">
                                                            <label>FÓRMULA ERROR</label>
                                                            <br />
                                                            <div class="col-md-offset-3 ">
                                                                <label>Error = |Resultante - Pivote|</label>
                                                                <br />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <div class="box-body bordes" style="background-color: rgba(190, 242, 113, 0.4)">
                                                    <div class="box-footer">
                                                        <div class="col-md-offset-1">
                                                            <label>ERROR</label>
                                                            <br />
                                                            <div class="col-md-offset-2 ">
                                                                <label>Error = 0,47</label>
                                                                <br />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                    </div>
                                </div>


                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <script src="Estilos/Funciones_Json.js"></script>

            <!--jQuery -->
            <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

            <!--Bootstrap -->
            <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>

            <!-- MetisMenu -->
            <script src="//cdnjs.cloudflare.com/ajax/libs/metisMenu/1.1.3/metisMenu.min.js"></script>

            <!-- Screenfull -->
            <script src="//cdnjs.cloudflare.com/ajax/libs/screenfull.js/2.0.0/screenfull.min.js"></script>

            <!-- Metis core scripts -->
            <script src="Estilos/assets/js/core.min.js"></script>

            <!-- Metis demo scripts -->
            <script src="Estilos/assets/js/app.js"></script>

            <script src="Estilos/assets/js/style-switcher.min.js"></script>
    </form>
</body>
</html>
