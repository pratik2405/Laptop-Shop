<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="view feedback.aspx.cs" Inherits="view_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
    <h1 align="center">Feedback Users</h1>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" 
                        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                        ForeColor="Black" Height="271px" Width="1038px">

                        <Columns>
                        <asp:BoundField DataField="uid" HeaderText="User Id"/>
                        <asp:BoundField DataField="fullname" HeaderText="First Nmae"/>
                        <asp:BoundField DataField="mobileno" HeaderText="MobileNo"/>
                        <asp:BoundField DataField="email" HeaderText="E-Mail Id"/>
                        <asp:BoundField DataField="message" HeaderText="Message"/>
                        </Columns>

                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    </table>
                    </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

