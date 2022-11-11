<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="popUp.aspx.cs" Inherits="SheshBesh.popUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .img{
            width:150px;
            height:150px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <asp:ImageButton ID="src" runat="server" ImageUrl='<%# Eval("src","src/{0}")%>' OnClick="src_Click" CssClass="img"></asp:ImageButton>
                </ItemTemplate>
            </asp:Repeater> 
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <button text="close" onclick="javascript:window.close('','_parent','');"></button> 

        </div>
    </form>
</body>
</html>
