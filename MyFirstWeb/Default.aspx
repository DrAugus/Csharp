<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblQuestion" runat="server" Text="Do you love me"></asp:Label>
        <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Click" />
        <p>
            <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
    </body>
</html>
