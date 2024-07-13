<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width:100%">
           <tr style="width:100%;height:300px">
    <td colspan="3">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="TIMER">
                </asp:Timer>
                <asp:Image ID="Image2" runat="server" Height="400px" Width="100%" 
                    BackColor="White" BorderStyle="Double" BorderColor="#333333" 
                    style="margin-top: 0px" />
            </ContentTemplate>
        </asp:UpdatePanel>
           </td>
</tr>
  </table>
</asp:Content>




