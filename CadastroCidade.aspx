<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroCidade.aspx.cs" Inherits="ProjAula4.CadastroCidade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>

    </title>
    <style type="text/css">
        .auto-style1 {
            height: 119px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" id="lblMsg">
            <br />
            <h2>Cadastro de Cidades</h2>
            <br />
            <br />
            <asp:Label ID="lblMsg0" runat="server"></asp:Label>
            <br />
            <br />
            Descrição:<br />
            <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
            <br />
            <br />
            Estado:<br />
            <asp:DropDownList ID="ddlEstado" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <asp:Button ID="btnVoltar" runat="server" OnClick="btnVoltar_Click" Text="Voltar" />
            <br />
            <br />
            <asp:GridView ID="gvCidade" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
