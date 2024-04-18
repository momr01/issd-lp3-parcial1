<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Historico.aspx.cs" Inherits="Parcial1.Historico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   <div style="margin: 50px 30px">
       <asp:Label ID="Label1" runat="server" Text="Histórico de Ventas" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True"></asp:Label>
       <br />
       <br />
       <asp:Label ID="Historial" runat="server" Text=""></asp:Label>
   </div>
    <hr />
    <div style="margin: 50px 30px">
       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Volver</asp:HyperLink>
   </div>
</body>
</html>
