﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjAula4.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Gestão de Cidade/Estados</h1>
        <br></br>
        <h3>Menu de opções</h3>
        <div>
            <asp:Button ID="btnEstados" runat="server" Text="Estados" OnClick="btnEstados_Click" />
            <asp:Button ID="btnCidades" runat="server" Text="Cidades" OnClick="btnCidades_Click" />
        </div>
    </form>
</body>
</html>