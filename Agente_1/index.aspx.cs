using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Agente_1.Red;

namespace Agente_1
{
    public partial class index : System.Web.UI.Page
    {
        public List<int> Y_Ante = new List<int>();//Inicialización de la lista de la Y anterior
        public List<int> Entradas = new List<int>();//Inicialización de la lista de entradas En
        public List<int> Vector = new List<int>();//Inicialización de la lista vector de comparación
        public int milagro;//Inicialización de la variable de la Resultante de la adeline 
        public List<float> pesos = new List<float>();//Inicialización de la lista de los pesos sinaticos
        Random ranpesos = new Random();//Inicialización de un objeto random para los numeros a la azar
        Red_Neuronal Neu;//Inicialización el objeto de la red neuronal
       
        DataTable CNX = Conexion.EjecutarConsulta("SELECT * FROM tablero");//Consulta del tablero de la base de datos
        int col = 0, row = 0;//Inicializacion  de la fila y columna de la ubicación agente

        //
        protected void Page_Load(object sender, EventArgs e)
        {
            
            do { col = buscarAgenta(row); } while (col == 0);//Buscar Ubicación del agente
            Entradas.Add(AgregarEntrada(col + 1, row - 1));//Entrada E1
            Entradas.Add(AgregarEntrada(col + 1, row));//Entrada E2
            Entradas.Add(AgregarEntrada(col + 1, row+1));//Entrada E3
            Entradas.Add(0);//Entrada E4
            Vector.Add(Entradas[0]); Vector.Add(Entradas[1]);Vector.Add(Entradas[2]);//Vector de comparación
            for (int i = 0; i < 4; i++){Y_Ante.Add(0); Response.Write(Entradas[i]); }//Llenar la Y inicial y el vector de conparación
            for (int i = 0; i < 20; i++){pesos.Add(((float)(ranpesos.Next(0, 101))/100));}//Llenar los pesos sinaticos con valores al azar
            Neu = new Red_Neuronal(Entradas, pesos); //Instanciar la red neuronal con los valores de las entradas y los pesos
            milagro = Neu.entrenamiento(Y_Ante, Vector);//Procesos de entrenamiento de ls neurona
            Response.Write(milagro);
            Conexion.EjecutarOperacion("UPDATE `tableroia`.`agente1` SET `Movimiento`='"+ milagro + "' WHERE  `Movimiento`=0 LIMIT 1;");//
        }

        //Buscar Agente
        private int buscarAgenta(int fil)
        {
            if ("1" == CNX.Rows[fil]["C1"].ToString()) { return 1; }
            if ("1" == CNX.Rows[fil]["C2"].ToString()) { return 2; }
            if ("1" == CNX.Rows[fil]["C3"].ToString()) { return 3; }
            if ("1" == CNX.Rows[fil]["C4"].ToString()) { return 4; }
            if ("1" == CNX.Rows[fil]["C5"].ToString()) { return 5; }
            if ("1" == CNX.Rows[fil]["C6"].ToString()) { return 6; }
            if ("1" == CNX.Rows[fil]["C7"].ToString()) { return 7; }
            if ("1" == CNX.Rows[fil]["C8"].ToString()) { return 8; }
            if ("1" == CNX.Rows[fil]["C9"].ToString()) { return 9; }
            if ("1" == CNX.Rows[fil]["C10"].ToString()) { return 10; }
            row++;
            return 0;
        }

        //Agregar entrada en binarios de la tabla del escenario
        private int AgregarEntrada(int cl,int fil)
        {
           try
            {
                if (CNX.Rows[fil][cl].ToString()=="0")
                {
                    return 0;
                }
                return 1;
            }
            catch (Exception)
            {
                return 1;
            }

        }


    }
}