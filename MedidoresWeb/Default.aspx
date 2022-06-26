<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Medidores.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="mensajes">
                <asp:Label runat="server" ID="mensajeslbl" CssClass="text-success"></asp:Label>
            </div>
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h3>Agregar Medidor</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="idTxt">ID del medidor</label>
                        <asp:TextBox ID="idTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="IdTxtVal" runat="server" ControlToValidate="idTxt" ErrorMessage="Ingrese Medidor" ForeColor="Red">Ingrese Medidor</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ControlToValidate="idTxt" ValidationExpression="\d+" Display="Static" ErrorMessage="Solo puede ingresar numero" EnableClientScript="true" runat="server"></asp:RegularExpressionValidator>
                    </div>


                    <div class="form-group">
                        <asp:Button runat="server" ID="agregarBtn" OnClick="agregarBtn_Click1"
                            Text="Agregar" CssClass="btn btn-primary " />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
