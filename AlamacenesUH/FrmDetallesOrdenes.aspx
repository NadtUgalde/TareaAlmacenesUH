﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDetallesOrdenes.aspx.cs" Inherits="AlmacenesUH.FrmDetallesOrdenes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Css/EstiloCatalogo.css" rel="stylesheet" />
    <link href="Css/CssBotones.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Lista de Detalles de Ordenes</title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <form cssclass="contenedor" id="form1" runat="server">
        <div>
            <div>
                <label for="Detalle">Detalle:</label>
                <asp:TextBox ID="tdetalle" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="orden">Orden:</label>
                <asp:TextBox ID="torden" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="Producto">Producto:</label>
                <asp:TextBox ID="tproducto" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="Cantidad">Cantidad:</label>
                <asp:TextBox ID="tcantidad" runat="server"></asp:TextBox>
            </div>
            <div class="button-container">
                <asp:Button ID="BAgregar" CssClass="button button1" runat="server" Text="Agregar" OnClick="BAgregar_Click" />
                <asp:Button ID="BBorrar" CssClass="button button1" runat="server" Text="Borrar" OnClick="BBorrar_Click" />
                <asp:Button ID="BModificar" CssClass="button button1" runat="server" Text="Modificar" OnClick="BModificar_Click" />
                <asp:Button ID="BConsultar" CssClass="button button1" runat="server" Text="Consultar" />
            </div>
        </div>

        <div cssclass="rigth">
            <h2 align="center">Lista de Detalles de Ordenes</h2>
            <table id="clientListTable">
                <thead cssclass="table">
                    <tr>
                        <th class="auto-style1">Detalle</th>
                        <th class="auto-style1">Orden</th>
                        <th class="auto-style1">Producto</th>
                        <th class="auto-style1">Cantidad</th>
                    </tr>
                    <asp:Repeater runat="server" ID="repeaterdetalles">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("Id") %></td>
                                <td><%# Eval("Orden") %></td>
                                <td><%# Eval("Producto") %></td>
                                <td><%# Eval("Cantidad") %></td>
                        </ItemTemplate>
                    </asp:Repeater>
                </thead>
            </table>
        </div>
    </form>
</body>
</html>
