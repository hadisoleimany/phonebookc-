<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="phonebook.Login" %>

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

        input[type=password], select {
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

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            border-radius: 4px;
            width: 30%; /* Could be more or less, depending on screen size */
        }

        .container {
            border-radius: 4px;
            background-color: #f2f2f2;
            padding: 16px;
            direction: rtl;
        }

        .animate {
            -webkit-animation: animatezoom 0.6s;
            animation: animatezoom 0.9s;
        }

        @-webkit-keyframes animatezoom {
            from {
                -webkit-transform: scale(0);
            }

            to {
                -webkit-transform: scale(1);
            }
        }

        @keyframes animatezoom {
            from {
                transform: scale(0);
            }

            to {
                transform: scale(1);
            }
        }

        .cancelbtn {
            border-radius: 4px;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49.4%;
            background-color: #f44336;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="modal-content animate">
        <div class="container" runat="server" id="signid">
            <label for="uname" style="direction: rtl;"><b>نام کاربری</b></label>
            <br />
            <asp:TextBox ID="txtusername" runat="server" placeholder="نام کاربری یا ایمیل را وارد کنید"></asp:TextBox>
            <br />
            <label for="psw" style="direction: rtl;"><b>کلمه عبور</b></label>
            <br />
            <asp:TextBox ID="txtpassword" TextMode="Password" runat="server" placeholder="کلمه عبور را وارد کنید"></asp:TextBox>

            <asp:Button ID="btnlogin" runat="server" OnClick="Button1_Click" Text="ورود" />
            <button type="button" onclick="document.getElementById('signid').style.display='none' , document.getElementById('divid').style.display='block'" class="cancelbtn">عضویت</button>
        </div>

        <div class="container" runat="server" id="divid" style="display: none;">
            <h1>عضویت</h1>
            <p>لطفا مشخصات خود را وارد کنید</p>
            <hr>

            <label for="username"><b>نام کاربری</b></label>
            <input id="txtusernamesave" runat="server" type="text" placeholder="نام کاربری" name="UserName" />
            <label for="psw"><b>کلمه عبور</b></label>
            <input id="txtpasswordsave" runat="server" type="password" placeholder="کلمه عبور" name="psw" />
            <label for="psw-repeat"><b>تکرار کلمه عبور</b></label>
            <input id="txtreppassword" runat="server" type="password" placeholder="تکرار کلمه عبور" name="psw-repeat" />
            <label for="email"><b>ایمیل</b></label>
            <input id="txtemail" runat="server" type="text" placeholder="ایمیل" name="email" />
            <div class="clearfix">
                <asp:Button runat="server" CssClass="button" Text="ذخیره" ID="btnsaveuser" OnClick="btnsaveuser_Click" />
                <button type="button" onclick="document.getElementById('signid').style.display='block' , document.getElementById('divid').style.display='none'" class="cancelbtn">انصراف</button>

            </div>
        </div>
    </form>
</body>
</html>
