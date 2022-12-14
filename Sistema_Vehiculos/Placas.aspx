<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Placas.aspx.cs" Inherits="Sistema_Vehiculos.Placas" %>
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
    &nbsp;&nbsp; ID PLACA:&nbsp;
        <asp:TextBox ID="TIDPLACA" runat="server" Width="190px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp; NUMERO DE PLACA:
        <asp:TextBox ID="TNumeroPlaca" runat="server" Width="190px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp; ID DEL DUEÑO:
&nbsp;<asp:DropDownList ID="DDL_IDUsuario" runat="server" DataSourceID="SqlDataSource1" DataTextField="IdUsuario" DataValueField="IdUsuario">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VehiculosConnectionString %>" SelectCommand="SELECT [IdUsuario] FROM [Usuarios]"></asp:SqlDataSource>
        <br />
        &nbsp; 
        <br />
        <br />
&nbsp;&nbsp; MONTO DEL SEGURO:
        <asp:TextBox ID="TMonto" runat="server" Width="190px"></asp:TextBox>
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
