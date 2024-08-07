﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewdetail.aspx.cs" Inherits="viewdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" 
        RepeatColumns="1" RepeatDirection="Horizontal" style="margin-top:10px">
        <HeaderTemplate>product Details</HeaderTemplate>
        <ItemTemplate>
         <table >
          <tr>
             <td>
             <asp:Label ID="Label2" runat="server" Text="Product Id:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("pid") %>'  Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                 </td>
             </tr>
          <tr>
             <td style="text-align:center">
                 <asp:Image ID="Image2" runat="server" Height="270" Width="100%" 
                     BorderColor="#CC0000" BorderWidth="2px" ImageUrl='<%# Eval("image")%>' />
             </td>
             </tr>
           <tr>
             <td >
             <asp:Label ID="Label7" runat="server" Text="Product Name:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                     <asp:Label ID="Label12" runat="server" Text='<%# Eval("pname") %>' Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                 </td>
             </tr>
               <tr>
             <td>
                 <asp:Label ID="Label8" runat="server" Text="Price Rs:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                     <asp:Label ID="Label10" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
             </td>
             </tr>
             <tr>
             <td>
             <asp:Label ID="Label9" runat="server" Text="Quantity:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                     <asp:Label ID="Label13" runat="server" Text='<%# Eval("quantity") %>'  Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                 </td>
             </tr>
              <tr>
             <td>
             <asp:Label ID="Label1" runat="server" Text="Category:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                     <asp:Label ID="Label4" runat="server" Text='<%# Eval("category") %>'  Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                 </td>
             </tr>
            <tr>
             <td>
             <asp:Label ID="Label14" runat="server" Text="Description:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                     <asp:Label ID="Label15" runat="server" Text='<%# Eval("description") %>' Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                 </td>
             </tr>
        </ItemTemplate>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" HorizontalAlign="Center" Width="350px" />
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList><br />
</asp:Content>

