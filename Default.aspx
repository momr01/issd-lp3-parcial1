<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Parcial1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <div style="margin: 50px 30px">
            <asp:Label ID="Label1" runat="server" Text="Sistema de Ventas" Font-Size="XX-Large" Font-Bold="True" Font-Underline="True"></asp:Label>
        </div>
   <div style="margin: 50px 30px">
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CargarVenta.aspx">Cargar una Venta</asp:HyperLink>
   </div>
    <div style="margin: 50px 30px">
       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Historico.aspx">Consultar Histórico de Ventas</asp:HyperLink>
   </div>
</body>
</html>
