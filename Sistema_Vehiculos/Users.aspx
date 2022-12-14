<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Sistema_Vehiculos.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
    <br />
    <br />
    <strong><span style="font-size: xx-large">INFORMACION GENERAL DE USUARIOS:</span><br />
    <br />
    <br />
    </strong>&nbsp;<asp:GridView ID="GridView1" runat="server"></asp:GridView>


    <strong>
    <br />
    &nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp; USUARIO (EMAIL):&nbsp;
        <asp:TextBox ID="TUsuario" runat="server" Width="190px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp; CLAVE:
        <asp:TextBox ID="TClave" runat="server" Width="190px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp; NOMBRE:
        <asp:TextBox ID="TNombre" runat="server" Width="190px"></asp:TextBox>
&nbsp;&nbsp; APELLIDOS:
        <asp:TextBox ID="TApellidos" runat="server" Width="190px"></asp:TextBox>
        <br />
&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;


    <asp:Button ID="BIngresar" runat="server" Text="Agregar" OnClick="BIngresar_Click" />
    &nbsp;&nbsp;
    <asp:Button ID="BModificar" runat="server" Text="Modificar" OnClick="BModificar_Click" />
    &nbsp;&nbsp;
    <asp:Button ID="BEliminar" runat="server" Text="Eliminar" OnClick="BEliminar_Click" />

    </strong>
</asp:Content>
