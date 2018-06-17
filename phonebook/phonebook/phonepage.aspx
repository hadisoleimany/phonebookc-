<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="phonepage.aspx.cs" Inherits="phonebook.phonepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="نام "></asp:Label>
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="نام خانوادگی"></asp:Label>
        <asp:TextBox ID="txtfamily" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="موبایل"></asp:Label>
        <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="تلفن"></asp:Label>
        <asp:TextBox ID="txtphonenumber" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="ذخیره" />
&nbsp;&nbsp;
        <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="ویرایش" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="حذف" />
&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="مشخصه حذف یا ویرایش"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtid" runat="server" OnTextChanged="txtsearch0_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnsearchid" runat="server" OnClick="btnsearchid_Click" Text="جستجو" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="جستجو بر اساس فیلدها"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnsearch" runat="server" OnClick="btnsearch_Click" Text="جستجو" />
&nbsp;<asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
