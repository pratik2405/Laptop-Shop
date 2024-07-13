<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product2.aspx.cs" Inherits="product2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        *{
           text-decoration:none;
          }
        .style1
        {
            height: 30px;
        }
        .style3
    {
        height: 44px;
    }
    .style4
    {
        height: 31px;
          ;
        width: 1512px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width:100%; padding-bottom: 7px;" bgcolor="White">
  <tr>
  <td style="text-align:right">
      <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="Black" 
          BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Names="Arial Black" 
          Height="25px" style="margin-left: 0px" Width="236px"></asp:TextBox>
      <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" 
          ImageUrl="~/search.png" Width="35px" 
          onclick="ImageButton1_Click" />
  </td>
  </tr>
  </table>

    <div>
       <asp:DataList ID="DataList1" runat="server" BackColor="#999999" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="20" 
        CellSpacing="10" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" 
        RepeatColumns="4" RepeatDirection="Horizontal" Width="100%" 
            onitemcommand="DataList1_ItemCommand" onselectedindexchanged="DataList1_SelectedIndexChanged1" 
           >
        <ItemTemplate>
        <table>
            
           <tr>
             <td style="text-align:center;width:100%" >
                 <asp:Label ID="Label4" runat="server" Text='<%# Eval("pname") %>' Font-Bold="True" 
                     Font-Names="Arial Black" ForeColor="Black" BackColor="Aqua" 
                     Width="100%"></asp:Label>
             </td>
             </tr>
             <tr>
             <td style="text-align:center">
                 <asp:Image ID="Image2" runat="server" Height="270" Width="100%" 
                     BorderColor="#CC0000" BorderWidth="2px" ImageUrl='<%# Eval("image")%>' />
             </td>
             </tr>
        <tr>
             <td style="text-align:center" class="style3">
                 <asp:Label ID="Label5" runat="server" Text="Price Rs:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center" 
                     BackColor="Aqua"></asp:Label>
                     <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center" 
                     BackColor="Aqua"></asp:Label>
             </td>
             </tr>
        <tr>
             <td style="text-align:center" class="style4">
              <asp:Label ID="Label1" runat="server" Text="Quantity:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center" 
                     BackColor="White"></asp:Label>
                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("quantity") %>' Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center" 
                     BackColor="White"></asp:Label>
             </td>
             </tr>
             </tr>
            <td style="text-align:center">
                <asp:LinkButton ID="LinkButton2" runat="server" 
                    CommandArgument='<%# Eval("pid") %>' CommandName="Assign" Font-Bold="True" 
                    Font-Names="Arial Black" Font-Size="Large">View Details</asp:LinkButton>
            </td>
        </table>
        </ItemTemplate>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" HorizontalAlign="Center" Width="350px" />
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </div>
</asp:Content>


