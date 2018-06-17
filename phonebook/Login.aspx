<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="phonebook.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            direction: rtl;
            padding: 12px 20px;
            margin: 8px 0;
            border-radius: 4px;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }

        .button {
            background-color: #4CAF50;
            font-size: 14px;
            border-radius: 4px;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49.4%;
        }

            .button:hover {
                opacity: 0.8;
            }

        button:hover {
            opacity: 0.8;
        }

        /* Extra styles for the cancel button */
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

        /* Center the image and position the close button */
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }



        .container {
            border-radius: 4px;
            background-color: #f2f2f2;
            padding: 16px;
            direction: rtl;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* The Modal (background) */
        .modal {
            display: block; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 20px;
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 50%; /* Could be more or less, depending on screen size */
        }

        /* The Close Button (x) */
        .close {
            position: absolute;
            right: 25px;
            top: 0;
            color: #000;
            font-size: 35px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

        /* Add Zoom Animation */
        .animate {
            -webkit-animation: animatezoom 0.6s;
            animation: animatezoom 0.6s;
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

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <div id="id01" class="modal">

        <form class="modal-content animate" id="form2" runat="server">

            <div class="container" id="signid">
                <label for="uname" style="direction: rtl;"><b>نام کاربری</b></label>
                <asp:TextBox ID="txtusername" runat="server" placeholder="نام کاربری یا ایمیل را وارد کنید" required></asp:TextBox>
                

                <label for="psw"><b>کلمه عبور</b></label>
                <input id="txtpassword" runat="server"  type="password" placeholder="کلمه عبور را وارد کنید" name="psw" required>

                <asp:Button runat="server" CssClass="button" Text="ورود" ID="btnlogin" OnClick="btnlogin_Click" />
                <button type="button" onclick="document.getElementById('signid').style.display='none' , document.getElementById('divid').style.display='block'" class="cancelbtn">عضویت</button>


            </div>

            <div class="container" id="divid" style="display: none;">
                <h1>عضویت</h1>
                <p>لطفا مشخصات خود را وارد کنید</p>
                <hr>


                <label for="username"><b>نام کاربری</b></label>
                <input id="txtusernamesave" runat="server"  type="text" placeholder="نام کاربری" name="UserName" required>


                <label for="psw"><b>کلمه عبور</b></label>
                <input  id="txtpasswordsave" runat="server"  type="password" placeholder="کلمه عبور" name="psw" required>

                <label for="psw-repeat"><b>تکرار کلمه عبور</b></label>
                <input id="txtreppassword" runat="server"  type="password" placeholder="تکرار کلمه عبور" name="psw-repeat" required>


                <label for="email"><b>ایمیل</b></label>
                <input id="txtemail" runat="server"  type="text" placeholder="ایمیل" name="email">


                <div class="clearfix">
                <asp:Button  runat="server" CssClass="button" Text="ذخیره"  ID="btnsaveuser" OnClick="btnsaveuser_Click"/>
                    <button type="button" onclick="document.getElementById('signid').style.display='block' , document.getElementById('divid').style.display='none'" class="cancelbtn">انصراف</button>


                </div>
            </div>


        </form>
    </div>

</body>
</html>
