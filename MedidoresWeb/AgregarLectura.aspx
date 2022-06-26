<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarLectura.aspx.cs" Inherits="Medidores.AgregarLectura" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
      <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Agregar Lectura</h3>
                </div>
                <div class="form-group">
                    <label for="MedidoresDDL">Seleccione medidor</label>
                    <asp:DropDownList runat="server" ID="MedidoresDDL" CssClass="form-select">

                    </asp:DropDownList>
                </div>
             
                <div class="card-body">                   
                    <div class="form-group">
                        <label for="Calendar1">Fecha de Medicion</label>
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="DateChange"></asp:Calendar>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="horaTxt">Hora de medicion</label>
                        <asp:TextBox ID="horaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="HoraTxtVal" runat="server" ControlToValidate="horaTxt" ErrorMessage="Ingrese Hora" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ControlToValidate="horaTxt" ValidationExpression="\d+" Display="Static" ErrorMessage="Solo puede ingresar numeros" EnableClientScript="true" runat="server"></asp:RegularExpressionValidator>
                        <asp:RangeValidator ControlToValidate="horaTxt" MinimumValue="0" MaximumValue="24" EnableClientScript="true" Type="Integer" ErrorMessage="El valor debe ser de 0 a 24" runat="server"></asp:RangeValidator>
                        
                    </div>
                     <div class="form-group">
                         <label for="minutoTxt">Minuto de medicion</label>
                         <asp:TextBox ID="minutoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="minTxtVal" runat="server" ControlToValidate="minutoTxt" ErrorMessage="Ingrese minuto" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ControlToValidate="minutoTxt" ValidationExpression="\d+" Display="Static" ErrorMessage="Solo puede ingresar numeros" EnableClientScript="true" runat="server"></asp:RegularExpressionValidator>
                         <asp:RangeValidator ControlToValidate="minutoTxt" Type="Integer" MinimumValue="0" MaximumValue="60" EnableClientScript="true" ErrorMessage="El valor debe ser de 00 a 60" runat="server"></asp:RangeValidator>
                     </div>   
                    <div class="form-group">
                        <label for="valorTxt">Valor de consumo</label>
                        <asp:TextBox runat="server" ID="valorTxt" CssClass="form-control"> </asp:TextBox>
                         <asp:RequiredFieldValidator ID="ValTxtVal" runat="server" ControlToValidate="valorTxt" ErrorMessage="Ingrese Valor de medicion" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ControlToValidate="valorTxt" ValidationExpression="\d+" Display="Static" ErrorMessage="Solo puede ingresar numeros." EnableClientScript="true" runat="server"></asp:RegularExpressionValidator>
                        <asp:RangeValidator ControlToValidate="valorTxt" Type="Integer" MinimumValue="0" MaximumValue="600" EnableClientScript="true" ErrorMessage="El valor debe ser de 0 a 600" runat="server"></asp:RangeValidator>
                    </div>
                   <div class="form-group">
                        <asp:Button runat="server" ID="agregarBtn" OnClick="agregarB_Click"
                            Text="Agregar" CssClass="btn btn-primary " />
                       </div>
                    
            </div>
        </div>
    </div>

       </div>
</asp:Content>
