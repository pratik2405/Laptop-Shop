<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registaion.aspx.cs" Inherits="Registaion" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    *
    {
        margin:0;
        padding:0;
     }
        .style1
        {
           
            height: 46px;
        }
        .style2
        {
            height: 46px;
        }
        .style3
        {
            height: 78px;
            width: 50%;
        }
        .style4
        {
            height: 78px;
        }
        .style5
        {
            height: 63px;
            width: 50%;
        }
        .style6
        {
            height: 63px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <center>
<table align="center" style="width: 700px; height: 400px; background-color: #C0C0C0;">
            <tr>
                <td colspan="2" align="center" class="style1">
                    <h1 style="background-color:#00FFFF; font-size: large; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; text-transform: capitalize; color: #000000; height: 27px; width: 707px; text-align: center;" 
                        align="center">Sign In</h1></td>
                    </tr>
                <tr>
                <td style="width:50%">
                    <b>Full Name:</b></td>
                     <td>
                         <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="250px"></asp:TextBox>
                          </td>
                    </tr>
            <tr>
                <td class="style3">
                    <b>E-Mail Id:</b></td>
                <td class="style4">
                    <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="E-Mail Id Is Empty" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Invalid E-Mail Id" ControlToValidate="TextBox3" 
                        ForeColor="Red" ValidationExpression="^^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                    
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    <b>Gender:</b></td>
                <td class="style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="250px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Gender Is Empty" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>Address:</b></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="250px" 
                        TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Address Is Empty" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>Phone No:</b></td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="250px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Phone No Is Empty" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ErrorMessage="Invalid Phone No" ControlToValidate="TextBox6" 
                        ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                     </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>Password:</b></td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="40px" Width="250px" 
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Password Is Empty" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox7" ControlToValidate="TextBox8" 
                        ErrorMessage="Password Is Not Matching" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>Confirm Password:</b></td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Height="40px" Width="250px" 
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Password Is Empty" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="True" 
                        Font-Size="Large" ForeColor="#0099FF" Height="45px" Width="196px" 
                        onclick="Button1_Click" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
            <td colspan="2" style="text-align:right">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
                    ForeColor="Red" Width="500px" />
            </td>
            </tr>
            <tr>
            <td colspan="2">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx" 
                                Font-Bold="True" Font-Size="Medium" ForeColor="Black">Already Register. Click Here....</asp:HyperLink>
            </td>
            </tr>
        
                    </table>
                    </center>
</asp:Content>




