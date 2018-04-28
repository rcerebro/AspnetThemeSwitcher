﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="DevExpress.Web.ASPxRichEdit.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxRichEdit" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <dx:ASPxPanel runat="server" ID="dxPanel" Width="99%">
        <Paddings Padding="10" />
        <PanelCollection>
            <dx:PanelContent>
                <div class="container-fluid">
                    <div class="row">
                        <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                            <div class="btn-group mr-1" role="group" aria-label="First group">
                                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Retornar página principal" OnClick="ASPxButton1_Click"></dx:ASPxButton>
                            </div>
                            <div class="btn-group mr-2" role="group" aria-label="Second group">
                                <dx:ASPxButton ID="ASPxButton2" runat="server" Text="ComboBox" AutoPostBack="false" UseSubmitBehavior="false" CausesValidation="false">
                                    <ClientSideEvents Click="function(s,e) { popUpCombobox.Show(); }" />
                                </dx:ASPxButton>
                                <dx:ASPxButton ID="ASPxButton3" runat="server" Text="CheckBox" AutoPostBack="false" UseSubmitBehavior="false" CausesValidation="false">
                                    <ClientSideEvents Click="function(s,e) { popUpCheckbox.Show(); }" />
                                </dx:ASPxButton>
                                <dx:ASPxButton ID="ASPxButton4" runat="server" Text="DatePickers" AutoPostBack="false" UseSubmitBehavior="false" CausesValidation="false">
                                    <ClientSideEvents Click="function(s,e) { popUpDate.Show(); }" />
                                </dx:ASPxButton>
                                <dx:ASPxButton ID="ASPxButton5" runat="server" Text="RadioButton" AutoPostBack="false" UseSubmitBehavior="false" CausesValidation="false">
                                    <ClientSideEvents Click="function(s,e) { popUpRadio.Show(); }" />
                                </dx:ASPxButton>
                                <dx:ASPxButton ID="ASPxButton6" runat="server" Text="Text Edit" AutoPostBack="false" UseSubmitBehavior="false" CausesValidation="false">
                                    <ClientSideEvents Click="function(s,e) { popUpTextEdit.Show(); }" />
                                </dx:ASPxButton>
                                <dx:ASPxButton ID="ASPxButton7" runat="server" Text="RichText" AutoPostBack="false" UseSubmitBehavior="false" CausesValidation="false">
                                    <ClientSideEvents Click="function(s,e) { popUpRichText.Show(); }" />
                                </dx:ASPxButton>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="container-fluid" style="padding-top: 20px">
                    <div class="row">
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="OrderID" Width="100%">
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="OrderID" ReadOnly="True" VisibleIndex="0">
                                    <EditFormSettings Visible="False"></EditFormSettings>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="CustomerID" VisibleIndex="1"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="EmployeeID" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="OrderDate" VisibleIndex="3"></dx:GridViewDataDateColumn>
                                <dx:GridViewDataDateColumn FieldName="RequiredDate" VisibleIndex="4"></dx:GridViewDataDateColumn>
                                <dx:GridViewDataDateColumn FieldName="ShippedDate" VisibleIndex="5"></dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="ShipVia" VisibleIndex="6"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Freight" VisibleIndex="7"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ShipName" VisibleIndex="8"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ShipAddress" VisibleIndex="9"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ShipCity" VisibleIndex="10"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ShipRegion" VisibleIndex="11"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ShipPostalCode" VisibleIndex="12"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ShipCountry" VisibleIndex="13"></dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </div>
                </div>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxPanel>
    <dx:ASPxPopupControl ID="popUpCombobox" ClientInstanceName="popUpCombobox" runat="server" Width="800px" Height="400px" PopupVerticalAlign="WindowCenter" PopupHorizontalAlign="WindowCenter" HeaderText="Controles Combobox">
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="container-fluid">
                    <div class="row p-1">
                        <div class="col">
                            <dx:ASPxComboBox Caption="ComboBox" ID="ASPxComboBox1" CaptionSettings-Position="Top" runat="server" Width="500px" DataSourceID="SqlDataSource2">
                                <Columns>
                                    <dx:ListBoxColumn FieldName="CategoryID"></dx:ListBoxColumn>
                                    <dx:ListBoxColumn FieldName="CategoryName"></dx:ListBoxColumn>
                                    <dx:ListBoxColumn FieldName="Picture"></dx:ListBoxColumn>
                                </Columns>
                            </dx:ASPxComboBox>
                        </div>
                    </div>
                    <div class="row p-1">
                        <div class="col">
                            <dx:ASPxDropDownEdit ID="ASPxDropDownEdit1" runat="server" Caption="DropDownEdit" CaptionSettings-Position="Top">
                                <Buttons>
                                    <dx:EditButton Text="Texto 1"></dx:EditButton>
                                    <dx:EditButton Text="Texto 2"></dx:EditButton>
                                </Buttons>
                            </dx:ASPxDropDownEdit>
                        </div>
                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="popUpCheckbox" ClientInstanceName="popUpCheckbox" runat="server" Width="800px" Height="400px" PopupVerticalAlign="WindowCenter" PopupHorizontalAlign="WindowCenter" HeaderText="Controles CheckBox">
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="container-fluid">
                    <div class="row p-1">
                        <div class="col">
                            <dx:ASPxCheckBox Text="Checkbox" CaptionSettings-Position="Top" runat="server"></dx:ASPxCheckBox>
                        </div>
                        <div class="col">
                            <dx:ASPxCheckBoxList Caption="CheckBoxList" CaptionSettings-Position="Top" runat="server" ValueField="CategoryID" TextField="CategoryName" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal"></dx:ASPxCheckBoxList>
                        </div>
                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="popUpRadio" ClientInstanceName="popUpRadio" runat="server" Width="800px" Height="400px" PopupVerticalAlign="WindowCenter" PopupHorizontalAlign="WindowCenter" HeaderText="Controles CheckBox">
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="container-fluid">
                    <div class="row p-1">
                        <div class="col">
                            <dx:ASPxRadioButton ID="ASPxRadioButton1" CaptionSettings-Position="Top" runat="server" Text="RadioButton"></dx:ASPxRadioButton>
                        </div>
                        <div class="col">
                            <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" CaptionSettings-Position="Top" runat="server" DataSourceID="SqlDataSource2" ValueField="CategoryID" TextField="CategoryName" Caption="RadioButtonList" RepeatColumns="3" RepeatDirection="Horizontal"></dx:ASPxRadioButtonList>
                        </div>
                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="popUpDate" ClientInstanceName="popUpDate" runat="server" Width="800px" Height="400px" PopupVerticalAlign="WindowCenter" PopupHorizontalAlign="WindowCenter" HeaderText="Controles DatePicker">
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="container-fluid">
                    <div class="row p-1">
                        <div class="col">
                            <dx:ASPxDateEdit ID="ASPxDateEdit1" CaptionSettings-Position="Top" Caption="DatePicker" runat="server" OnInit="ASPxDateEdit1_Init"></dx:ASPxDateEdit>
                        </div>
                        <div class="col">
                            <dx:ASPxCalendar ID="ASPxCalendar1" CaptionSettings-Position="Top" Caption="Calendar" runat="server" OnInit="ASPxCalendar1_Init"></dx:ASPxCalendar>
                        </div>
                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="popUpTextEdit" ClientInstanceName="popUpTextEdit" runat="server" Width="800px" Height="400px" PopupVerticalAlign="WindowCenter" PopupHorizontalAlign="WindowCenter" HeaderText="Controles Textos">
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="container-fluid">
                    <div class="row p-1">
                        <div class="col">
                            <dx:ASPxMemo ID="ASPxMemo1" runat="server" Height="71px" Width="170px" Caption="Memo" CaptionSettings-Position="Top" Rows="10" Columns="30" NullText="Memo"></dx:ASPxMemo>
                        </div>
                        <div class="col">
                            <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px" Caption="TextBox" CaptionSettings-Position="Top" Text="" NullText="TextBox"></dx:ASPxTextBox>
                        </div>
                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="popUpRichText" ClientInstanceName="popUpRichText" runat="server" Width="800px" Height="400px" PopupVerticalAlign="WindowCenter" PopupHorizontalAlign="WindowCenter" HeaderText="Controles RichText">
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="container-fluid">
                    <div class="row p-1">
                        <div class="col">
                            <dx:ASPxRichEdit ID="ASPxRichEdit2" runat="server" WorkDirectory="~\App_Data\WorkDirectory" Width="100%"></dx:ASPxRichEdit>
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <section id="secaoDataSource">
        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:NorthwindConnectionString %>' ProviderName='<%$ ConnectionStrings:NorthwindConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:NorthwindConnectionString %>' ProviderName='<%$ ConnectionStrings:NorthwindConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
    </section>
</asp:Content>

