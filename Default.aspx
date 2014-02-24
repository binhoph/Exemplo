<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Exemplo._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>

        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Cadastro de Clientes</h3>


    <asp:FormView runat="server" ID="FormCadastro" DefaultMode="Insert" ItemType="Model.Cliente.ClienteModel" InsertMethod="FormCadastro_InsertItem" CellPadding="4" ForeColor="#333333" DataKeyNames="Id">
        <InsertItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Nome:
            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            DataNascimento:
            <asp:TextBox ID="DataNascimentoTextBox" runat="server" Text='<%# Bind("DataNascimento") %>' />
            <br />
            
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

            <asp:ValidationSummary runat="server" ID="validation" DisplayMode="BulletList" ShowSummary="true" ForeColor="Red"/>
        
        </InsertItemTemplate>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
      
    </asp:FormView>


















  <%--  <table>
        <tr>
            <td>Nome:</td>
            <td><asp:TextBox ID="txtNome" runat="server"/></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><asp:TextBox ID="txtEmail" runat="server" /></td>
        </tr>
        <tr>
            <td>Data de Nascimento:</td>
            <td><asp:TextBox ID="txtDataNasc" runat="server" /></td>
        </tr>
        
    </table>--%>
   
    <br />
    

    <asp:GridView ID="gridDados" runat="server" ItemType="Model.Cliente.ClienteModel" SelectMethod="CarregarGrid" DataKeyNames="Id">
        <Columns>
            <asp:TemplateField ShowHeader="false">
                <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" CommandArgument='<%#: Item.Id %>' Text="Excluir" ></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>
