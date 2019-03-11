<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ListaUsuarios.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lista usuarios</title>
    </head>
<body>
    <form id="form1" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
&nbsp; //&nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registro.aspx">Registro</asp:HyperLink>
    
    <div style="font-size: 14px; font-family: 'Arial Black'">
    <br />    
    <center>
    <table>
            <tr>
                <td align="left" class="style6" 
                    style="font-family: Arial, Helvetica, sans-serif;">
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/pruebas.mdb" 
                SelectCommand="SELECT [NOMBRE], [EDAD], [EMAIL], [CONTRASENA] FROM [USUARIOS] ORDER BY [EDAD]">
                    </asp:AccessDataSource>
                    </td>
               <td class="style5">
                    <asp:DataList ID="DataList1" runat="server" 
                DataSourceID="AccessDataSource1">
                        <ItemTemplate>
                            NOMBRE:
                            <asp:Label ID="NOMBRELabel" runat="server" Text='<%# Eval("NOMBRE") %>' />
                            <br />
                            EDAD:
                            <asp:Label ID="EDADLabel" runat="server" Text='<%# Eval("EDAD") %>' />
                            <br />
                            EMAIL:
                            <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                            <br />
                            CONTRASENA:
                            <asp:Label ID="CONTRASENALabel" runat="server" 
                                Text='<%# Eval("CONTRASENA") %>' />
                            <br />
<br />
                        </ItemTemplate>
            </asp:DataList>
                </td>
            </tr>
            <tr>
                <td align="left" class="style6" 
                    style="font-family: Arial, Helvetica, sans-serif;">
                    &nbsp;</td>
               <td class="style5">
                    <asp:Label ID="etName" runat="server" Text="NOMBRE:" Visible="False"></asp:Label>
                    <asp:Label ID="etNombre" runat="server" Text="nombre" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="etAge" runat="server" Text="EDAD:" Visible="False"></asp:Label>
                    <asp:Label ID="etEdad" runat="server" Text="edad" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="etCorreo" runat="server" Text="EMAIL:" Visible="False"></asp:Label>
                    <asp:Label ID="etEmail" runat="server" Text="email" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="etContra" runat="server" Text="CONTRASENA:" Visible="False"></asp:Label>
                    <asp:Label ID="etPass" runat="server" Text="contraseña" Visible="False"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>
    </center>
    
            <br />
    
    </div>
    
    
    </form>
</body>
</html>
