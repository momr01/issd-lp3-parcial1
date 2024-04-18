using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1
{
    public partial class Historico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (File.Exists(this.Server.MapPath(".") + "/ventas.txt"))
            {
                StreamReader arch = new StreamReader(this.Server.MapPath(".") + "/ventas.txt");   
                string[] lines = (arch.ReadToEnd()).Split('\n');
                arch.Close();
                this.Historial.Text = "<hr>";
                int lineCount = 0;

                foreach (string line in lines)
                {
                    lineCount++;
                    if (lineCount % 4 == 0)
                    {
                        this.Historial.Text += $"{line} <br/>";
                        this.Historial.Text += "<hr>";
                    }
                    else
                    {
                        this.Historial.Text += $"{line} <br/>";
                    }


                }

            } else
            {
                this.Historial.Text = "Sin datos";
            }
               
        }
    }
}