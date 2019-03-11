<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registro.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro</title>
    <style type="text/css">
        .style1
        {
            width: 26%;
            height: 179px;
        }
        .style2
        {
            height: 23px;
            width: 725px;
        }
        .style3
        {
            width: 145px;
        }
        .style4
        {
            height: 23px;
            width: 145px;
        }
        .style5
        {
            width: 725px;
        }
        .style6
        {
            width: 145px;
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
&nbsp; //&nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" 
        NavigateUrl="~/ListaUsuarios.aspx">Lista usuarios</asp:HyperLink>
    
    <div style="font-size: 14px; font-family: 'Arial Black'">
    <center>
    
        Alta de usuarios<table class="style1">
            <tr>
                <td align="left" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif;">
                    Nombre:</td>
                <td class="style5">
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif;">
                    Edad:</td>
                <td class="style5">
                    <asp:TextBox ID="txtEdad" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif;">
                    Email:</td>
                <td class="style2">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif;">
                    Contraseña:</td>
                <td class="style5">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" class="style6" 
                    style="font-family: Arial, Helvetica, sans-serif;">
                    &nbsp;Almacenar en base de datos<asp:CheckBox ID="chkBBDD" runat="server" />
                    </td>
               <td class="style5">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
                </td>
            </tr>
            <tr>
                <td align="left" class="style6" 
                    style="font-family: Arial, Helvetica, sans-serif;">
        <asp:Label ID="etRegistro" runat="server" Visible="False"></asp:Label>
                    <br />
        <asp:Label ID="etAvisoCampos" runat="server" Visible="False" ForeColor="Red"></asp:Label>
                </td>

               <td class="style5">
                   &nbsp;</td>
            </tr>
        </table>
    </center>
    </div>
    
    <div style="margin-left: 360px">
    </div>
    <br />
    <br />
    
    </form>
</body>
</html>
