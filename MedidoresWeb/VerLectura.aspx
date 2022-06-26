<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerLectura.aspx.cs" Inherits="Medidores.VerLectura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
      <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Ver Lectura</h3>
                </div>
                <div class="card-body">
                    <asp:GridView CssClass="table table-hover table-bordered mt-5"
                        OnRowCommand="grillaClientes_RowCommand"
                        AutoGenerateColumns="False"
                        EmptyDataText="no hay lecturas"
                        ShowHeader="true"
                        runat="server" ID="grillaLectura">
                        <Columns>
                            <asp:BoundField DataField="IdLectura" HeaderText="Id Medidor" />
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha de medicion" />
                            <asp:BoundField DataField="Hora" HeaderText="Hora de medicion" />
                            <asp:BoundField DataField="Minuto" HeaderText="Minuto de medicion" />
                            <asp:BoundField DataField="ValorConsumo" HeaderText="Valor de consumo" />
                         
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button
                                        CommandName="eliminar"
                                        CommandArgument='<%# Eval("IdLectura") %>'
                                        runat="server" CssClass="btn btn-danger" Text="Eliminar" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
