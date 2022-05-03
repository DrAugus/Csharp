<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DareOrNot.aspx.cs" Inherits="Csharp1._3._3.DareOrNot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 113px;
            width: 661px;
        }
        .新建样式1 {
            font-family: 微软雅黑;
        }
    </style>
</head>
<body style="height: 97px; margin-bottom: 19px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblQuestion" runat="server" Font-Size="Larger" ForeColor="#FF6666" Text="Do You Love Me ?"></asp:Label>&nbsp;           
            <asp:TextBox ID="txtAnswer" runat="server" BackColor="Lime" BorderColor="#9966FF" Width="33px" TextMode="Password"></asp:TextBox>&nbsp;
            <asp:Button ID="btnSubmit" runat="server" BackColor="Aqua" OnClick="btnSubmit_Click" Text="Click" Width="68px" />
        </div>
        <asp:Label ID="lblResult" runat="server" BackColor="White"  Text="Emmmm" ForeColor="#000099"></asp:Label><br />
        <asp:RadioButton ID="rdoYes" runat="server" Checked="True" GroupName="select" Text="Y" />
        <asp:RadioButton ID="rdoNo" runat="server" GroupName="select" Text="N" />&nbsp;
        <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="Select" /><br />
        <asp:DropDownList ID="ddlChoose" runat="server">
            <asp:ListItem Value="1">You</asp:ListItem>
            <asp:ListItem Value="2">Me</asp:ListItem>
            <asp:ListItem Value="3">He/She</asp:ListItem>
        </asp:DropDownList>&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />&nbsp;
        <asp:Label ID="lblContents" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <div style="text-align:left">
            <span class="新建样式1">毕业设计进展情况汇报</span><br />
            毕设编号：<asp:TextBox ID="txtProjectID" runat="server" BackColor="#FF8080"></asp:TextBox>
            <asp:CompareValidator ID="cvProjectID" runat="server" 
                ControlToValidate="txtProjectID" ErrorMessage="请输入正确的编号" 
                Operator="DataTypeCheck" Type="Integer">输入数字</asp:CompareValidator><br />
            开始日期：<asp:TextBox ID="txtStart" runat="server" BorderColor="#FFFF80"></asp:TextBox>
            <asp:CompareValidator ID="cvStart" runat="server" 
                ErrorMessage="请输入正确的日期" 
                Operator="DataTypeCheck" Type="Date" ControlToValidate="txtStart">输入日期</asp:CompareValidator><br />
            完成日期：<asp:TextBox ID="txtEnd" runat="server" BorderColor="#80FF80"></asp:TextBox>
            <asp:CompareValidator ID="cvEnd" runat="server" 
                ErrorMessage="必须大于开始日期" ControlToCompare="txtStart"
                Operator="GreaterThan" Type="Date" ControlToValidate="txtEnd">大于开始日期</asp:CompareValidator>
            <br />
            省份：<asp:DropDownList ID="ddlProvince" runat="server" Height="21px" Width="57px" BackColor="#FF80FF" AutoPostBack="True"
                onselectedindexchanged="ddlProvince_SelectedIndexChanged">
                <asp:ListItem Value="1">上海</asp:ListItem>
                <asp:ListItem Value="2">北京</asp:ListItem>
                <asp:ListItem Value="3">深圳</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="用户名不能为空" >没有填写用户名</asp:RequiredFieldValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="lblSubmit1" runat="server" Text="检测用户名是否可用" OnClick="lblSubmit1_Click" />
            <asp:Label ID="lblResult1" runat="server" Text="Label"></asp:Label>
            <br />
            密码：<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
            性别：<asp:RadioButton ID="rdoMan" runat="server" GroupName="Sex" Text="男" />
            <asp:RadioButton ID="rdoWomen" runat="server" GroupName="Sex" Text="女" />
            <br />
            年龄：<asp:TextBox ID="txtAge" runat="server" Width="52px"></asp:TextBox>&nbsp;
            <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="年龄 1`150 之间" MaximumValue="150" MinimumValue="1" Type="Integer">1~150之间</asp:RangeValidator>
            <br />
            手机号码：<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="手机号码必须为11位数字" ValidationExpression="[0-9]{11}">11位数字</asp:RegularExpressionValidator>
            <br />
            QQ&nbsp;邮箱：<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="QQ邮箱格式不正确" ValidationExpression="[0-9]{6,12}@qq[.]com">QQ E-mail格式</asp:RegularExpressionValidator>
            <br />
            爱好：<asp:CheckBox ID="chkMale" runat="server" Text="男性" />
            <asp:CheckBox ID="chkFemale" runat="server" Text="女性" />
            <asp:CheckBox ID="chkAll" runat="server" Text="双性" /><br />
            喜欢的网站：<asp:HyperLink ID="hplBlog" runat="server" NavigateUrl="weibo.com/ccBramlye4300">Blog</asp:HyperLink><br />
            最喜欢的图片：<br />
            <asp:Image ID="imgBook" runat="server" ImageUrl="~/Source/ggg.jpeg" /><br />
            <asp:Button ID="btnSubmit2" runat="server" Text="提交" OnClick="btnSubmit2_Click" /><br />
            <asp:Label ID="lblResult2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:ValidationSummary ID="vs" runat="server" />
        </div>
    </form>
</body>
</html>
