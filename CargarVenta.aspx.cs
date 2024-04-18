using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1
{
    public partial class CargarVenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private bool FormularioValido()
        { 
           if(String.IsNullOrEmpty(this.Fecha.Text) || String.IsNullOrEmpty(this.Vendedor.Text) || String.IsNullOrEmpty(this.Detalle.Text) ||
                String.IsNullOrEmpty(this.Monto.Text)){
                return false;
            }

            if (!double.TryParse(this.Monto.Text, out double result))
            {
                return false;
            }

            return true;
        }

  

        private void LimpiarControles()
        {
            this.Fecha.Text = "";
            this.Vendedor.Text = "";
            this.Detalle.Text = "";
            this.Monto.Text = "";
        }

        private void EjecutarRegistro()
        {
            StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/ventas.txt", true);
            arch.WriteLine("Fecha: " + this.Fecha.Text);
            arch.WriteLine("Vendedor: " + this.Vendedor.Text);
            arch.WriteLine("Detalle: " + this.Detalle.Text);
            arch.WriteLine("Importe: $ " + this.Monto.Text);

            arch.Close();
        }

        protected void Registrar_Click(object sender, EventArgs e)
        {
            if (FormularioValido())
           
            {
                EjecutarRegistro();
                this.Resultado.Text = "Datos Registrados";
                this.Resultado.ForeColor = System.Drawing.Color.DarkGreen;
               LimpiarControles();
            } else
            {
                this.Resultado.Text = "Por favor, verifique los datos solicitados.";
                this.Resultado.ForeColor = System.Drawing.Color.Red;

            }
          
        }
   
    }
}