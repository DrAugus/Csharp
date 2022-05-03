<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccessSql.aspx.cs" Inherits="WebAccessSql.AccessSql" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            昵称：<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <asp:Button ID="btnQuery" runat="server" OnClick="btnQuery_Click" Text="查询" />
            <br />
            编号：<asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
            <br />
            真名：<asp:TextBox ID="txtRealName" runat="server"></asp:TextBox>
            
        </div>
    </form>
</body>
</html>
