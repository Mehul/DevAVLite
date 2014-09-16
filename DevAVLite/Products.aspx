<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" KeyFieldName="Id" Width="100%">
        <Columns>
            <dx:GridViewDataTextColumn Caption="Product Name" FieldName="Name">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Cost" PropertiesTextEdit-DisplayFormatString="C">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SalePrice" PropertiesTextEdit-DisplayFormatString="C">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RetailPrice" PropertiesTextEdit-DisplayFormatString="C">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Inventory" FieldName="CurrentInventory">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Manufacturing">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn Caption="Backordered" FieldName="Backorder">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn FieldName="Category" Visible="false">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="ProductionStart" Visible="false">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataCheckColumn FieldName="Available" Visible="false">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn Caption="Support" FieldName="Support.FullName" Visible="false">
            </dx:GridViewDataTextColumn>
        </Columns>
        <Settings VerticalScrollableHeight="400" VerticalScrollBarMode="Auto" />
        <SettingsBehavior AllowClientEventsOnLoad="false" AllowFocusedRow="true" EnableCustomizationWindow="true" />
        <SettingsPager AlwaysShowPager="true" PageSize="15" ShowEmptyDataRows="true"></SettingsPager>
    </dx:ASPxGridView>
</asp:Content>

