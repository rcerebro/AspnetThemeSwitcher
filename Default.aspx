﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <dx:ASPxPanel runat="server" ID="dxPanel" Width="100%">
        <Paddings Padding="10" />
        <PanelCollection>
            <dx:PanelContent>
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Redirecionar para outra página de teste" OnClick="ASPxButton1_Click"></dx:ASPxButton>
                <br />
                <div class="container" style="padding-top: 20px">
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="SupplierID">
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="SupplierID" ReadOnly="True" VisibleIndex="0">
                                <EditFormSettings Visible="False"></EditFormSettings>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="1"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="2"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ContactTitle" VisibleIndex="3"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="4"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="5"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Region" VisibleIndex="6"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="PostalCode" VisibleIndex="7"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="8"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Phone" VisibleIndex="9"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Fax" VisibleIndex="10"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="HomePage" VisibleIndex="11"></dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:ASPxGridView>
                </div>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxPanel>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:NorthwindConnectionString %>' ProviderName='<%$ ConnectionStrings:NorthwindConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Suppliers]"></asp:SqlDataSource>

</asp:Content>

