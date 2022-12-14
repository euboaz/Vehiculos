<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="Sistema_Vehiculos.Reporte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp; <strong>&nbsp;GENERADOR DE REPORTE POR PLACA


    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp; INGRESE EL NUMERO DE PLACA:
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NumPlaca" DataValueField="NumPlaca">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VehiculosConnectionString %>" SelectCommand="SELECT [NumPlaca] FROM [Placa]"></asp:SqlDataSource>
    <br />
    </strong>
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server"></asp:GridView>


    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <strong>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


    <asp:Button ID="BConsultar" runat="server" Text="Consultar" OnClick="BConsultar_Click" style="font-weight: bold" />

    </strong>

</asp:Content>
