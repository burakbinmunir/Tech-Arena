<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Latest_Work.LoginPage" %>

<!DOCTYPE html>

<head runat="server">   

    <title>Log-in</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
        html, body, form {
            margin: 0;
            padding: 0;
            overflow: auto;
            width: 100%;
            height: 100%;
        }

        body {
            background-image: url("bg.jpg");
            background-size: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .labels {
            font-size: 15px;
            color: whitesmoke;
            background-color: darkslategray;
            padding: 6px;
            border-radius: 3px;
            width: auto;
        }

        .btn, .btn-primary {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
            color: white !important;
            background-color: darkslategray !important;
            border-color: darkslategray !important;
            border-radius: 3px !important;
            padding: .45rem .7rem;
            font-size: .875rem;
            line-height: .5;
            border-radius: .2rem;
        }


        .ownBtn.btn.btn-primary {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
            color: darkslategray !important;
            background-color: whitesmoke !important;
            border-color: whitesmoke !important;
            border-radius: 1rem !important;
            font-weight: 600;
        }

        .container_ {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        form {
            width: 100%;
            height: 95%;
        }

        hr.horizontalLine {
            border: 1px solid white;
            box-shadow: 2px 2px 2px 0.5px #000000;
        }

        .centerAlign {
            text-align: center;
        }


        img {
            margin: auto;
        }

        .heading_ {
            padding-top: 0.05em;
            text-align: center;
            font-family: Courier New, Courier, monospace;
            font-size: 1.5rem;
            font-weight: lighter;
            font-style: normal;
            color: whitesmoke;
        }

        .row1_ {
            width: 100%;
        }

        .check_ {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
            font-size: .775rem;
            line-height: .5;
            color: whitesmoke;
        }

        .p1 {
            text-align: center;
            font-size: 0.4rem;
            color: whitesmoke;
            opacity: 70%;
        }
    </style>
    <html xmlns="http://www.w3.org/1999/xhtml">
</head>


<body>

    <form id="form1" runat="server">


        <%----------------------- Navigation Bar with the aid of Bootstrap --------------------%>
        <div class="container_">

            <nav class="row_ row1_ navbar navbar-expand-lg navbar-light bg-light">

                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="logo_Circle.png" alt="" width="60" height="60">
                    </a>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class=" nav-item">
                                <a class="nav-link" href="#">Home</a>
                            </li>
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
            <br />


            <%----------------------- Main Page Heading --------------------%>
            <div class="row_ heading_">
                <asp:Label ID="Label1" runat="server" Text="Label">Already have an account?</asp:Label>

            </div>
            <br />
            <br />
            <br />

            <div class="row_">

                <div class="labels">

                    <%-------------------------- Email -------------------------%>

                    <asp:Label ID="usernameLabel" runat="server" type="email" Text="Label">Email ID </asp:Label>
                    &nbsp
                </div>

                <asp:TextBox ID="emailBox" TextMode="Email" runat="server" CssClass="form-control-sm" placeholder="e.g darkC12@gmail.com" required="required"></asp:TextBox>
                <br />
                <br />

                <div class="labels">

                    <%------------------------ Password -----------------------%>

                    <asp:Label ID="passwordLabel" runat="server" Text="Label">Password</asp:Label>
                    &nbsp
                </div>

                <asp:TextBox ID="passwordBox" TextMode="Password" CssClass="form-control-sm" runat="server" placeholder="e.g DarkCoder_12" required="required" ></asp:TextBox>
                <br />
                <br />


                <%------------------------- Submit Button ---------------------%>

                <div class="centerAlign">
                    <asp:Button runat="server" CssClass="btn btn-primary btn-xs" Text="Submit" OnClick="Login_Click"/>
                </div>
                <br />

                 <%------------------------- Error Message ---------------------%>

                 <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect credentials - try again!" ForeColor ="Red" ></asp:Label>
                </br>
             

                <%------------------------ Horizontal Line ---------------------%>

                <hr class="horizontalLine">
            </div>

            <%------------- Sign Up Button Redirects to Sign Up Page ------------%>
            <div class="ownBtn btn btn-primary">
                <asp:Button runat="server" CssClass="ownBtn btn btn-primary" Text="Or else sign up now!" OnClick="SignUp_Click" />
            </div>
        </div>
        </div>

    </form>

    <div class="p1">
        <p2>©techarenaLTD </p2>
    </div>

</body>
</html>
