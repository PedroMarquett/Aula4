<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroEstado.aspx.cs" Inherits="ProjAula4.CadastroEstado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 <div class="auto-style1">
            <br />
            <h2>Cadastro de Estado</h2>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <br />
            <br />
            Descrição:<br />
            <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <asp:Button ID="btnVoltar" runat="server" OnClick="btnVoltar_Click" Text="Voltar" />
            <br />
            <br />
            <asp:GridView ID="gvEstado" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
