using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Agente_1.Red
{
    public class Red_Neuronal
    {
        public List<int> Entrada;//Variable de las entradas

        public List<float> Peso;//Variable de los pesos sinapticos

        private float Error = 0, Error_Ant = 0;//Variable del Error

        Boolean Direccion = true; // Variable dirección de la tasa de crecimiento

        //Constructor de la red neuronal
        public Red_Neuronal(List<int> Entradas, List<float> Pesos)
        {
            Entrada = Entradas;
            Peso = Pesos;
        }

        //Proceso de entrenamiento de la neurona
        public int entrenamiento(List<int> Y_anterior, List<int> Vector)
        {
            List<int> Salida = Y_anterior;//inicialización de la salida con la Y anterior

            int pivot = 0;//inicialización de la variable pivot

            Boolean Guardian = true;//Guardian 

            while (Guardian)
            {
                for (int i = 0; i < Entrada.Count; i++) { Salida[i] = modelo1(Peso, Entrada, i, Salida); }//Procedimiento del modelo Hamming

                float resultado = modelo2(Peso, Salida);//Procedimiento del modelo adeline

                pivot = Pivot(Vector);//Comparación con el vector 
                Error_Ant = Error;
                Error = Math.Abs(resultado - pivot);//Calculo del error 

                if (Error_Ant < Error) { if (Direccion) { Direccion = false; } else { Direccion = true; } }//Direcionamiento de la tasa de crecimiento

                if (Error < 0.2)
                {
                    Guardian = false; //Salir del ciclo de entrenamiento
                }
                else
                {
                    Tasa(pivot);//Proceso de tasa de crecimento
                }
            }

            //Retorno del valor esperado para que el agente avance a la siguiente casilla
            switch (pivot)
            {
                case 1:
                    return 2;
                case 2:
                    return 3;
                case 3:
                    return 4;
                default:
                    return 0;
            }

        }

        //Procedimiento del Modelo Hamming
        private int modelo1(List<float> pesos, List<int> entradas, int neurona, List<int> salidas)
        {
            float resultado = 0;
            switch (neurona)
            {
                case 0: // Neurona 0
                    resultado = (entradas[neurona] * pesos[0]) + (salidas[0] * pesos[1]) + (salidas[1] * pesos[2]) + (salidas[2] * pesos[3]) + (salidas[3] * pesos[4]) + 1;
                    if (resultado < 1)
                    {
                        return 0;
                    }
                    else
                    {
                        return 1;
                    }
                case 1: // Neurona 1
                    resultado = (entradas[neurona] * pesos[5]) + (salidas[0] * pesos[6]) + (salidas[1] * pesos[7]) + (salidas[2] * pesos[8]) + (salidas[3] * pesos[9]) + 1;
                    if (resultado < 1)
                    {
                        return 0;
                    }
                    else
                    {
                        return 1;
                    }
                case 2: // Neuroa 2
                    resultado = (entradas[neurona] * pesos[10]) + (salidas[0] * pesos[11]) + (salidas[1] * pesos[12]) + (salidas[2] * pesos[13] + (salidas[3] * pesos[14])) + 1;
                    if (resultado < 1)
                    {
                        return 0;
                    }
                    else
                    {
                        return 1;
                    }
                case 3: // Neurona 3
                    resultado = (entradas[neurona] * pesos[15]) + (salidas[0] * pesos[16]) + (salidas[1] * pesos[17]) + (salidas[2] * pesos[18]) + (salidas[3] * pesos[19]) + 1;
                    if (resultado < 1)
                    {
                        return 0;
                    }
                    else
                    {
                        return 1;
                    }
            }
            return 0;
        }

        //Porcedimiento del Modelo  Adeline
        private float modelo2(List<float> pesos, List<int> salidas)
        {
            return (pesos[1] * salidas[0]) + (pesos[7] * salidas[1]) + (pesos[13] * salidas[2]) + (pesos[19] * salidas[3]);
        }

        //Tasa crecimeinto de los pesos 
        private void Tasa(int pivot)
        {
            switch (pivot)
            {
                case 1:
                    if (Direccion)
                    {
                        Peso[1] = Peso[1] - (float)0.1;
                    }
                    else
                    {
                        Peso[1] = Peso[1] + (float)0.1;
                    }
                    break;
                case 2:
                    if (Direccion)
                    {
                        Peso[7] = Peso[7] - (float)0.1;
                    }
                    else
                    {
                        Peso[7] = Peso[7] + (float)0.1;
                    }
                    break;
                case 3:
                    if (Direccion)
                    {
                        Peso[13] = Peso[13] - (float)0.1;
                    }
                    else
                    {
                        Peso[13] = Peso[13] + (float)0.1;
                    }
                    break;
                default:
                    if (Direccion)
                    {
                        Peso[19] = Peso[19] - (float)0.1;
                    }
                    else
                    {
                        Peso[19] = Peso[19] + (float)0.1;
                    }

                    break;
            }

        }

        //Analisis del vector de comparacion con el pivot 
        private int Pivot(List<int> Vector)
        {
            if (Vector[1] == 0)
            {
                return 2;
            }
            if (Vector[0] == 0)
            {
                return 1;
            }
            if (Vector[2] == 0)
            {
                return 3;
            }
            return 0;
        }
    }
}