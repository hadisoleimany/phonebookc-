<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="phonepage.aspx.cs" Inherits="phonebook.phonepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            direction: rtl;
            background: url("1.png");
            background-size: cover;
        }

        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            border-radius: 4px;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            direction: rtl;
        }

        input[type=submit] {
            width: 49%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }


            input[type=submit]:hover {
                background-color: #45a049;
            }

        div {
            margin: 0 auto;
            width: 31.5%;
            height: 50%;
            align-items: center;
            border-top-left-radius: 4px;
            border-top-right-radius: 4px;
            background-color: #f2f2f2;
            padding: 15px;
        }

        .rad {
            float: right;
        }

        .grdContent {
            position: center;
            direction: rtl;
            border: solid 2px black;
        }

        .header {
            background-color: #646464;
            font-family: Arial;
            color: White;
            border: none 0px transparent;
            height: 25px;
            text-align: center;
            font-size: 16px;
        }

        .rows {
            background-color: #fff;
            font-family: Arial;
            font-size: 14px;
            color: #000;
            min-height: 25px;
            text-align: right;
            border: none 0px transparent;
        }

            .rows:hover {
                background-color: #ff8000;
                font-family: Arial;
                color: #fff;
                text-align: right;
            }

        .selectedrow {
            background-color: #ff8000;
            font-family: Arial;
            color: #fff;
            font-weight: bold;
            text-align: right;
        }

        .mydatagrid a /** FOR THE PAGING ICONS  **/ {
            background-color: Transparent;
            padding: 5px 5px 5px 5px;
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }

        .mygrdContent a:hover /** FOR THE PAGING ICONS  HOVER STYLES**/ {
            background-color: #000;
            color: #fff;
        }

        .mygrdContent span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/ {
            background-color: #c9c9c9;
            color: #000;
            padding: 5px 5px 5px 5px;
        }

        .pager {
            background-color: #646464;
            font-family: Arial;
            color: White;
            height: 30px;
            text-align: right;
        }

        .mygrdContent td {
            border-radius: 3px;
            padding: 5px;
        }

        .mygrdContent th {
            border-radius: 3px;
            padding: 5px;
        }
             .cancelbtn {
            border-radius: 4px;
            color: white;
            padding: 5px 10px !important;
            margin: 4px 0;
            border: none;
            cursor: pointer;
            background-color: #f44336 !important;
            float:left;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="uname" style="direction: rtl;"><b>  کاربری</b></label> : 
            <label id="lbluser" runat="server" style="direction: rtl;"><b> 
            </b></label> 
            <asp:Button ID="btnlogout" runat="server" Width="10%" CssClass="cancelbtn"  OnClick="btnlogout_Click" Text="خروج" />
                
            <asp:TextBox ID="txtname" runat="server" placeholder="نام ... "></asp:TextBox>
            <br />
            <asp:TextBox ID="txtfamily" runat="server" placeholder="نام خانوادگی ... "></asp:TextBox>
            <br />
            <asp:TextBox ID="txtmobile" runat="server" placeholder="موبایل ... "></asp:TextBox>
            <br />
            <asp:TextBox ID="txtphonenumber" runat="server" placeholder="تلفن ... "></asp:TextBox>
            <br />
            <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="ذخیره" />
            <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="ویرایش" />
            <br />
            <asp:TextBox ID="txtid" runat="server" placeholder="جستجو" OnTextChanged="txtsearch0_TextChanged"></asp:TextBox>
            <asp:Button ID="btnsearchid" runat="server" Width="100%" OnClick="btnsearchid_Click" Text="جستجو" />
            </div>
        <asp:GridView ID="grdContent" runat="server" CssClass="mygrdContent" PagerStyle-CssClass="pager"
            HeaderStyle-CssClass="header" RowStyle-CssClass="rows"
            AllowPaging="True" OnSelectedIndexChanged="grdContent_SelectedIndexChanged" AutoGenerateColumns="false"
            OnRowDeleting="grdContent_RowDeleting" OnRowCommand="grdContent_RowCommand">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="کد" />
                <asp:BoundField DataField="name" HeaderText="نام" />
                <asp:BoundField DataField="family" HeaderText="فامیل" />
                <asp:BoundField DataField="mobile" HeaderText="موبایل" />
                <asp:BoundField DataField="phonenumber" HeaderText="تلفن" />

                <asp:ButtonField Text="ویرایش" CommandName="Select" ItemStyle-Width="25" />
                <asp:ButtonField Text="حذف" CommandName="Delete" ItemStyle-Width="25" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
