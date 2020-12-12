<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="SolariumG.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container col-md-6 TextoContenido">
        <div class="col-md-12">

            <div class="form-group mt-4 text-center">
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label Text="Ingrese sus datos" Font-Bold="true" runat="server" />
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label Text="Nombre Completo" runat="server" />
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtNombreCompleto" CssClass="form-control" MaxLength="80" runat="server" />
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label Text="Email" runat="server" />
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtEmail" CssClass="form-control" MaxLength="50" placeholder="email@domain.com" TextMode="Email" runat="server" />
                    </div>
                    <div class="col-md-1">
                        <asp:RequiredFieldValidator ID="requiredTxtEmail" ErrorMessage="El email es requerido."
                            ControlToValidate="txtEmail" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label Text="¿Que duda tienes?" runat="server" />
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtConsulta" BorderColor="Black" TextMode="multiline" Columns="50" Rows="5" runat="server"/>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <asp:Button ID="btnRegistro" CssClass="btn btn-dark" Text="Enviar" OnClick="btnRegistro_Click" runat="server" />
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-12 text-left">
                        <asp:ValidationSummary
                            ID="validaciones"
                            ForeColor="Black"
                            DisplayMode="BulletList"
                            HeaderText="Datos requeridos"
                            Font-Names="verdana"
                            Font-Size="12"
                            runat="server" />
                    </div>
                </div>
            </div>

        </div>


    </div>

    <div class="container text-center col-md-12 TextoContenido">
        <div class="col-md-12">
            <img class="img-fluid" src="css/img/Banner.jpg" alt="Solarium Gaming" style="height: 300px; width: 1000px" />
        </div>
    </div>

</asp:Content>
