<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargarVenta.aspx.cs" Inherits="Parcial1.CargarVenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="margin: 50px 30px">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Datos de la Venta" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True"></asp:Label>
        </div>
        <div style="margin: 20px">
            <asp:Label ID="Label2" runat="server" Text="Fecha: "></asp:Label><asp:TextBox ID="Fecha" runat="server" TextMode="Date"></asp:TextBox>
            <br />
             <br />
              <asp:Label ID="Label3" runat="server" Text="Vendedor: "></asp:Label><asp:TextBox ID="Vendedor" runat="server"></asp:TextBox>
            <br />
             <br />
              <asp:Label ID="Label4" runat="server" Text="Detalle de la venta: "></asp:Label><asp:TextBox ID="Detalle" runat="server" TextMode="MultiLine" Columns="80" Rows="5"></asp:TextBox>
            <br />
             <br />
              <asp:Label ID="Label5" runat="server" Text="Monto: "></asp:Label><asp:TextBox ID="Monto" runat="server"></asp:TextBox>
            <br />
            <br />
             <br />
             <br />
            <asp:Button ID="Registrar" runat="server" Text="REGISTRAR" OnClick="Registrar_Click" />
             <br />
            
            <asp:Label ID="Resultado" runat="server" Font-Bold="True"></asp:Label>
             <br />
             <br />
             <br />
            <hr />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Volver</asp:HyperLink>

        </div>
    </form>
</body>
</html>
