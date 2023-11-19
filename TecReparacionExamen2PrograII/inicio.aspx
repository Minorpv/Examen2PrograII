<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="TecReparacionExamen2PrograII.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <h3>Reparaciones</h3>
    <br/>
        <div>
        <br />
        <br />
        <asp:GridView runat="server" ID="datagridRep" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True" />
        <br />
        <br />
        <br />
    </div>
    <br/>
    <h3>Detalles de la reparación</h3>
    <br/>
        <div>
        <br />
        <br />
        <asp:GridView runat="server" ID="GridViewDetalle" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True" />
        <br />
        <br />
        <br />
    </div>
    <br/>
    <h3>Asignaciones</h3>
    <br/>
        <div>
        <br />
        <br />
        <asp:GridView runat="server" ID="GridViewAsig" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True" />
        <br />
        <br />
        <br />
    </div>
    <br/>
</asp:Content>
