<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerCliente.aspx.cs" Inherits="Medidores.VerCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
      <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Ver Medidores</h3>
                </div>
                <div class="card-body">
                    <asp:GridView CssClass="table table-hover table-bordered mt-5"
                        OnRowCommand="grillaClientes_RowCommand"
                        AutoGenerateColumns="False"
                        EmptyDataText="No hay Medidores"
                        ShowHeader="true"
                        runat="server" ID="grillaClientes">
                        <Columns>
                            <asp:BoundField DataField="Idmedidor" HeaderText="Id medidor" />
                         
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button
                                        CommandName="eliminar"
                                        CommandArgument='<%# Eval("Idmedidor") %>'
                                        runat="server" CssClass="btn btn-danger" Text="Eliminar" />
                                  
                                </ItemTemplate>
                              
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <div class="form-group">
                            <asp:Button CommandName="Agregar Lectura" CommandArgument='<%# Eval("Idmedidor") %>' runat="server" CssClass="btn btn-danger" Text="Agregar Lectura"  OnClick="Unnamed_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
