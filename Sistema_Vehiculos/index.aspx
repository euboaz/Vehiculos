<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Sistema_Vehiculos.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Rubik:400,700'/><link href="CSS/index.css" rel="stylesheet" />
    <script src="JS/index.js"></script>
    <title>Sistema - Gimnasio</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="login-form">
  <form id="form1" runat="server">
    <h1 class="auto-style1">Iniciar Sesión</h1>
    <div class="content">
      <div class="input-field">
        <asp:TextBox ID="TEmail" type="email" placeholder="Email" runat="server"></asp:TextBox>
      </div>
      <div class="input-field">
         <asp:TextBox ID="TPassword" type="password" placeholder="Contraseña" runat="server"></asp:TextBox>
      </div>
    </div>
    <div class="action" style="text-align: left">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BIngresar" runat="server" Text="Ingresar" Height="50px" Width="96px" OnClick="BIngresar_Click"/>
        <br />
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br/>
    </div>
  </form>
</div>
    <p>
        &nbsp;</p>

</body>
</html>
