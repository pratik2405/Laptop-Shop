<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cartt.aspx.cs" Inherits="cartt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder3"><table style="width:100%; padding-bottom: 7px;" bgcolor="White">
  <tr>
  <td style="text-align:right">
  <asp:DropDownList ID="DropDownList1" runat="server" 
          >
          <asp:ListItem>Select Category</asp:ListItem>
          <asp:ListItem>Laptop</asp:ListItem>
          <asp:ListItem>Printer</asp:ListItem>
          <asp:ListItem>monitor</asp:ListItem>
          <asp:ListItem>accsories</asp:ListItem>
      </asp:DropDownList>
      <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
     <!--<asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="Black" 
          BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Names="Arial Black" 
          Height="25px" style="margin-left: 0px" Width="236px"></asp:TextBox>
      <asp:ImageButton ID="ImageButton5" runat="server" Height="22px" 
          ImageUrl="~/search.png" Width="35px" 
          />-->
  </td>
  </tr>
  </table>
  <table align="center">
  <tr>
  <td>
  <b>Customer Name:</b>
      <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
          </td>
          <td>
              <b>Customer Id:</b>
              <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
          </td>
  </tr>
  </table>
    <div>
       <asp:DataList ID="DataList1" runat="server" BackColor="#999999" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="20" 
        CellSpacing="10" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" 
        RepeatColumns="4" RepeatDirection="Horizontal" Width="100%" 
            onitemcommand="DataList1_ItemCommand" onselectedindexchanged="DataList1_SelectedIndexChanged" 
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
                     BackColor="Aqua"></asp:Label>
                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("quantity") %>' Font-Bold="True" 
                     Font-Names="Arial" ForeColor="Black" style="text-align:center" 
                     BackColor="Aqua"></asp:Label>
             </td>
             </tr>
        <tr>
             <td style="text-align:center" class="style5">
                 <asp:LinkButton ID="LinkButton1" runat="server" Text="Add To Cart" CommandName="AddToCart" 
                     CommandArgument='<%# Eval("pid") %>' BackColor="Black" BorderWidth="3px" 
                     Font-Bold="True" Font-Size="Large" ForeColor="White" Height="48px" 
                     Width="154px" BorderStyle="Outset" onclick="LinkButton1_Click" />
                    <td class="style5">
             </tr>
             <tr>
             <td style="text-align:center" >
             <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Assign" 
                     CommandArgument='<%# Eval("pid") %>' Font-Bold="True" Font-Names="Arial Black" 
                     Font-Size="Large">View Details</asp:LinkButton>
             </td>
             </tr>
        </table>
        </ItemTemplate>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" HorizontalAlign="Center" Width="350px" />
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </div>
</asp:Content>











<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table width="100%">
        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="hp%20logo.png" 
                            
                            style="height: 90px; width: 90px; margin-left: 40px; margin-top: 0px;" />
            </td>
            <td align="center" 
                        style="font-family: 'Bahnschrift SemiBold'; font-size: 30px;" 
                        class="style1" height="90px" width="100%">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HP LAPTOPS &amp; ACCESSORIES SHOP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton 
                    ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/Image/addcart.jpg" 
                    onclick="ImageButton1_Click1" Width="50px" />
&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>



