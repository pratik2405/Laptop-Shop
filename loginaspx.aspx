<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="loginaspx.aspx.cs" Inherits="loginaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
*{
   margin:0;
   padding:0;
 }
    
</style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <br />
<center>
<table align="center" 
            style="width: 400px; height: 100px; background-color: #C0C0C0">
            <tr>
                <td colspan="2" align="center" class="style1">
                    <h1 style="background-color:#00FFFF; font-size: large; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; text-transform: capitalize; color: #000000;">Log In</h1></td>
                    </tr>
                <tr>
                <td style="width:70%">
                    <b>E-Mail Id:</b></td>
                     <td>
                         <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="150px"></asp:TextBox>
                    </td>

            </tr>
                <td style="width:70%">
                    <b>Password:</b></td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="150px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Log In" Font-Bold="True" 
                        Font-Size="Large" ForeColor="#0099FF" Height="30px" Width="90px" 
                        onclick="Button1_Click" P/></td></tr>
             <tr>
             <td style="width:70%">
             
                            <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
             </td>
                        <td align="right">
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="Sign Up. Here...." Font-Bold="True" 
                                Font-Size="Large" ForeColor="Black" NavigateUrl="~/Registaion.aspx"></asp:HyperLink>
                        </td>
            </tr>

        </table>
        </center><br />
</asp:Content>







