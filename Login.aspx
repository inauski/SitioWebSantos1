<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .style1
        {
            width: 29%;
            height: 179px;
        }
        .style3
        {
            width: 127px;
        }
        .style5
        {
            width: 725px;
        }
        .style4
        {
            height: 23px;
            width: 127px;
        }
        .style2
        {
            height: 23px;
            width: 725px;
        }
        .style6
        {
            width: 127px;
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registro.aspx">Registro</asp:HyperLink>
&nbsp; //&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/ListaUsuarios.aspx">Lista usuarios</asp:HyperLink>
    <div>
        <center>
        <br />
        <table class="style1">
            <tr>
                <td align="left" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif;">
                    Email:</td>
                <td class="style2">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="txtCorreo" runat="server" ControlToValidate="txtEmail" 
                             CssClass="failureNotification" ErrorMessage="El email es obligatorio." ToolTip="El email es obligatorio." 
                             ValidationGroup="LoginUserValidationGroup" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif;">
                    Contraseña:</td>
                <td class="style5">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPass" 
                        CssClass="failureNotification" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." 
                             ValidationGroup="LoginUserValidationGroup" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
               <td class="style5">
                    <asp:Button ID="LoginButton" runat="server"  
                         Text="Iniciar sesión" 
                        ValidationGroup="LoginUserValidationGroup" />
                </td>
            </tr>
            <tr>
                <td align="left" class="style6" 
                    style="font-family: Arial, Helvetica, sans-serif;">
                    &nbsp;</td>
               <td class="style5">
                <span class="failureNotification">
                    <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup" ForeColor="Red"/>
                    <asp:Label ID="etAviso" runat="server" Visible="False"></asp:Label>
                    &nbsp;</td>
            </tr>
        </table>
    </center>
     
        
    
    </div>
    </form>
</body>
</html>
