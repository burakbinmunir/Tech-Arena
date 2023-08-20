<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignupPage.aspx.cs" Inherits="Latest_Work.SignupPage" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Sign-up</title>

    <style>
        html, body {
            margin: 0;
            padding: 0;
            overflow: auto;
            width: 100%;
            height: 100%;
            color: white;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(147deg, #000000 0%, #284646 100%);
            background-size: 100%;
            -webkit-animation: gradientAnimation 10s ease infinite;
            -moz-animation: gradientAnimation 10s ease infinite;
            animation: gradientAnimation 10s ease infinite;
        }


        @-webkit-keyframes gradientAnimation {
            0% {
                background-position: 0% 50%
            }

            50% {
                background-position: 100% 50%
            }

            70% {
                background-position: 100% 0%
            }

            100% {
                background-position: 0% 50%
            }
        }

        @-moz-keyframes gradientAnimation {
            0% {
                background-position: 0% 50%
            }

            50% {
                background-position: 100% 50%
            }

            70% {
                background-position: 100% 0%
            }

            100% {
                background-position: 0% 50%
            }
        }

        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%
            }

            50% {
                background-position: 100% 50%
            }

            70% {
                background-position: 100% 0%
            }

            100% {
                background-position: 0% 50%
            }
        }

        .heading {
            text-align: center;
            font-family: font-family: Courier New, Courier, monospace;
            font-size: 2rem;
            font-weight: lighter;
            font-style: italic;
            color: silver;
        }

        input[type="radio"] {
            margin-top: 8px;
            margin-right: 8px;
        }

        p {
            font-family: font-family: Courier New, Courier, monospace;
            font-weight: lighter;
            font-style: italic;
            color: silver;
            max-width: 30%;
            margin: auto;
            text-align: center;
            font-size: 1em;
            padding-bottom: 2%;
        }

        .heading_ {
            padding-top: 1em;
            text-align: center;
            font-family: Courier New, Courier, monospace;
            font-size: 3rem;
            font-weight: lighter;
            font-style: italic;
            color: silver;
        }

        .left {
            padding-left: 7em;
            flex: 45%;
        }


        .right {
            padding-left: 2rem;
            flex: 30%;
        }

        .label_ {
            font-family: font-family: Courier New, Courier, monospace;
            font-weight: 700;
            font-style: normal;
            Font-size: 1rem;
            box-shadow: 10px 10px 10px #000000;
            padding: 1em;
            border-radius: 1px;
            width: min-content;
            background-color: white;
            color: darkslategray;
        }

        .label2_ {
            font-family: font-family: Courier New, Courier, monospace;
            font-weight: 700;
            font-style: normal;
            background-color: white;
            Font-size: 1rem;
            box-shadow: 10px 10px 10px #000000;
            color: darkslategray;
            padding: 1em;
            border-radius: 1px;
            width: max-content;
        }

        .vl {
            flex: 7%;
            border-left: 6px solid white;
            height: 28rem;
            margin-right: 10px;
            padding-right: 10px;
            margin-top: 50px;
        }

        .container {
            display: flex;
            flex-direction: column;
            height: 90%;
        }

        .changeFont {
            font-family: font-family: Courier New, Courier, monospace;
            font-weight: 500;
            font-style: normal;
            Font-size: 1rem;
            background-color: white;
            color: darkslategray;
        }

        .btn, .btn-secondary {
            color: silver;
            background-color: darkslategray !important;
            border-color: darkslategray !important;
            border-radius: 25px;
        }


        .p1 {
            font-family: font-family: Courier New, Courier, monospace;
            font-weight: lighter;
            font-style: italic;
            color: silver;
            margin: auto;
            text-align: center;
            font-size: 1em;
        }

        .btn, .btn-primary, .btn, .btn-small {
            color: silver;
            background-color: darkslategray !important;
            border-color: darkslategray !important;
            border-radius: 25px;
            align-content: center;
            justify-content: center;
            align-items: center;
            align-self: center;
            text-align: center;
        }

        form {
            height: 90%;
        }
    </style>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>


<body>

    <%----------------------- Navigation Bar with the aid of Bootstrap --------------------%>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="logo_Circle.png" alt="" width="70" height="70">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class=" nav-item">
                        <a class="nav-link" href="#">Home</a>
                 
                    <a class="nav-link" href="#">Contact Us</a>

                    </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Language
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">English-US</a></li>
                <li><a class="dropdown-item" href="#">English-UK</a></li>
            </ul>
        </li>
                </ul>
            </div>
        </div>
    </nav>


    <%----------------------- Main Page Content --------------------%>

    <h1 class="heading_">Become an Arenator Now.</h1>
    <p>Want to connect with developers like you and delve deeper into the world of coding? Tech Arena is just the site for you!</p>


    <%----------------------- Main Page Form --------------------%>
    <form runat="server">
        <div class="container">

            <div class="row">

                <%----------------------- Main Page Left Side --------------------%>

                <div class="left">

                    <div class="label_">
                        <asp:Label ID="Label1" runat="server" Text="First Name : "></asp:Label>
                        <asp:TextBox ID="FN" runat="server" required="required"></asp:TextBox>
                        <br />
                        <br />

                        <asp:Label ID="Label2" runat="server" Text="Last Name : "></asp:Label>

                        <asp:TextBox ID="LN" runat="server"></asp:TextBox>

                        <br />
                        <br />

                        <asp:Label ID="Label3" runat="server" Text="User Name : ">  </asp:Label>
                        <asp:TextBox ID="UN" runat="server" required="required"></asp:TextBox>
                        <br />
                        <br />

                        <asp:Label ID="Label7" runat="server" Text="  Email ID    : "> </asp:Label>
                        <asp:TextBox ID="EM" TextMode="email" runat="server" required="required"></asp:TextBox>

                        <br />
                        <br />

                        <asp:Label ID="Label4" runat="server" Text="  Password     : "> </asp:Label>
                        <asp:TextBox ID="PASS" TextMode="password" runat="server" required="required"></asp:TextBox>

                        <br />
                        <br />

                        <asp:Label ID="Label8" runat="server" Text="Confirm Password : "></asp:Label>
                        <asp:TextBox ID="CFPASS" TextMode="password" runat="server" required="required"></asp:TextBox>

                        <br />
                        <br />
                    </div>
                </div>

                <%----------------------- Main Page Vertical Line  --------------------%>

                <div class="vl"></div>

                <%----------------------- Main Page Right Side --------------------%>
                <div class="right">
                    <div class="label2_">

                        <%----------------------------------- DropDown List (Qualification) ------------------------%>
                        <div class="dropdown">
                            <asp:Label ID="Label6" runat="server" Text="Qualification : " required="required"></asp:Label>
                            <asp:DropDownList ID="userQualification" CssClass="btn btn-secondary dropdown-toggle" runat="server">
                                <asp:ListItem Text="Post Graduate" Value="Post Graduate"></asp:ListItem>
                                <asp:ListItem Text="Graduate" Value="Graduate"></asp:ListItem>
                                <asp:ListItem Text="Under Graduate" Value="Under Graduate"></asp:ListItem>
                            </asp:DropDownList>

                            <br />
                            <br />
                            <br />

                            <asp:Label ID="Label10" runat="server" Text="Sign up as a : " required="required"></asp:Label>
                            <br />
                            <br />
                            <div class="changeFont">

                                <%-----------------------------------Radio Buttons (Sign Up As) ------------------------%>


                                <asp:RadioButton ID="R1" class="form-check" Text="Contributer" GroupName="UserType" runat="server" />
                                &nbsp&nbsp
                                <asp:RadioButton ID="R2" class="form-check" Text="Hirer" GroupName="UserType" runat="server" />
                                &nbsp&nbsp
                                <asp:RadioButton ID="R3" class="form-check" Text="Coder" GroupName="UserType" runat="server" />
                            </div>
                            <br />
                            <br />
                            <br />

                            <%-----------------------------------DropDown List (Domains) ------------------------%>

                            <asp:Label ID="Label9" runat="server" Text="Domains : " required="required"></asp:Label>
                            <asp:DropDownList ID="userDomain" CssClass="btn btn-secondary dropdown-toggle" runat="server">

                                <asp:ListItem Text="Software Engineer" Value="Software Engineer"></asp:ListItem>
                                <asp:ListItem Text="Data Scientist" Value="Data Scientist"></asp:ListItem>
                                <asp:ListItem Text="Computer Scientist" Value="Computer Scientist"></asp:ListItem>
                                <asp:ListItem Text="AI Engineer" Value="AI Engineer"></asp:ListItem>
                                <asp:ListItem Text="Big Data Engineer" Value="Big Data Engineer"></asp:ListItem>
                                <asp:ListItem Text="UX Developer" Value="UX Developer"></asp:ListItem>
                                <asp:ListItem Text="Database Developer" Value="Database Developer"></asp:ListItem>
                            </asp:DropDownList>
                            <br />

                            <br />
                            <br />

                            <%------------------------------- Links (Buttons)  ------------------------------%>                           
                            <asp:Button runat="server" CssClass="btn btn-primary btn-small " Text=" Submit Here! " OnClick ="SignUp_Process"/>

                             <%------------------------- Error Message ---------------------%>

                             <asp:Label ID="lblErrorMessage" runat="server" Text="Invalid / Missing Fields" ForeColor ="Red" ></asp:Label>
                             <br />

                        </div>
                    </div>
                </div>

            </div>

            <%------------------------------- CopyRight Text  ------------------------------%>

            <div class="row">
                <div class="p1">
                    <p2>let's connect. </p2>
                    <br />
                    <p2>©techarenaLTD </p2>
                </div>
            </div>
        </div>
    </form>
</body>

</html>





