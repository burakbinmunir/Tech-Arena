<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="otherUserProfile.aspx.cs" Inherits="Latest_Work.otherUserProfile" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="Mobirise v5.6.8, mobirise.com">
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:image:src" content="">
    <meta property="og:image" content="">
    <meta name="twitter:title" content="Profile">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <meta name="description" content="">


    <title>Profile</title>
    <link rel="stylesheet" href="profile/assets/web/assets/mobirise-icons2/mobirise2.css">
    <link rel="stylesheet" href="profile/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="profile/assets/bootstrap/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="profile/assets/bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="profile/assets/dropdown/css/style.css">
    <link rel="stylesheet" href="profile/assets/socicon/css/styles.css">
    <link rel="stylesheet" href="profile/assets/theme/css/style.css">
    <link rel="preload" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <noscript>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap">
    </noscript>
    <link rel="preload" as="style" href="profile/assets/mobirise/css/mbr-additional.css">
    <link rel="stylesheet" href="profile/assets/mobirise/css/mbr-additional.css" type="text/css">
</head>
<body>
    <form runat="server">
        <section data-bs-version="5.1" class="menu menu2 cid-t6ogsPYxdz" once="menu" id="menu2-l">

            <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
                <div class="container">
                    <div class="navbar-brand">

                        <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-7" href=""></a></span>
                        <div class="hamburger">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                                <li class="nav-item"><a class="nav-link link text-white display-4" href="">Home</a></li>
                                <li class="nav-item"><a class="nav-link link text-white display-4" href="">Dashboard</a></li>
                                <li class="nav-item"><a class="nav-link link text-white display-4" href="Search.aspx">Search</a>
                                </li>
                            </ul>

                            <div class="navbar-buttons mbr-section-btn"><a class="btn btn-black display-4" href="">Sign out</a></div>
                        </div>
                    </div>
            </nav>
        </section>

        <section data-bs-version="5.1" class="features1 cid-t7h7zWJojC" id="features2-p">





            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card-wrapper">
                            <div class="card-box align-center">
                                <span class="mbr-iconfont mobi-mbri-code mobi-mbri" style="color: rgb(57, 101, 106); fill: rgb(57, 101, 106);"></span>
                                <asp:Label runat="server" ID="stotalProjects" CssClass="card-title align-center mbr-black mbr-fonts-style display-7"></asp:Label>
                                <%--<h4 id="totalProjects" class="card-title align-center mbr-black mbr-fonts-style display-7"><strong>(Total Projects)</strong></h4>--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card-wrapper">
                            <div class="card-box align-center">
                                <span class="mbr-iconfont mobi-mbri-users mobi-mbri" style="color: rgb(57, 101, 106); fill: rgb(57, 101, 106);"></span>
                                <%--<h4 class="card-title align-center mbr-black mbr-fonts-style display-7"><strong>(total connections)</strong></h4>--%>
                                <asp:Label ID="stotalConnectionsLabel" runat="server" CssClass="card-title align-center mbr-black mbr-fonts-style display-7"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card-wrapper">
                            <div class="card-box align-center">
                                <span class="mbr-iconfont mobi-mbri-idea mobi-mbri" style="color: rgb(57, 101, 106); fill: rgb(57, 101, 106);"></span>
                                <%--<h4 class="card-title align-center mbr-black mbr-fonts-style display-7"><strong>(qualification)</strong></h4>--%>
                                <asp:Label runat="server" CssClass="card-title align-center mbr-black mbr-fonts-style display-7" ID="squalificationLabel"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card-wrapper">
                            <div class="card-box align-center">
                                <span class="mbr-iconfont mobi-mbri-layers mobi-mbri" style="color: rgb(22, 88, 97); fill: rgb(22, 88, 97);"></span>
                                <%--<h4 class="card-title align-center mbr-black mbr-fonts-style display-7"><strong>(Mode)</strong></h4>--%>
                                <asp:Label runat="server" CssClass="card-title align-center mbr-black mbr-fonts-style display-7" ID="sprofileModeLabel"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section data-bs-version="5.1" class="features6 cid-t7gWhLI55G" id="features7-n">
            <!---->

            <div class="container">
                <div class="card-wrapper">
                    <div class="row align-items-center">
                        <div class="col-12 col-lg-6">
                            <div class="image-wrapper">
                                <img src="profile/assets/images/mbr-1076x1187.png" alt="profile">
                            </div>
                        </div>
                        <div class="col-12 col-lg">
                            <div class="text-box">
                                <asp:Label runat="server" ID="susernameLabel" CssClass="mbr-title mbr-fonts-style display-2"><strong>Username</strong><br></asp:Label>
                                <br />
                                <br />
                                <asp:Label runat="server" ID="sfullNameLabel" CssClass="mbr-title mbr-fonts-style display-7"></asp:Label>
                                <%--<p class="mbr-title mbr-fonts-style display-7"><strong>Full Name</strong><br></p>--%>
                                <%--<asp:Label id="fullNameLabel" CssClass="mbr-title mbr-fonts-style display-7" runat="server"></asp:Label>--%>
                                <p class="mbr-text mbr-fonts-style display-7">(description here)</p>

                                <div class="mbr-section-btn pt-3">
                                    <asp:Button CssClass="btn btn-black display-4" runat="server" Text="My Portfolio"></asp:Button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section data-bs-version="5.1" class="features7 cid-t7h8267tQU" id="features8-q">
            <!---->




            <div class="container">
                <div class="row">
                    <div class="title col-12">
                        <%--<h5 class="mbr-section-title mbr-fonts-style mb-3 display-2"><strong>Areas of Interest</strong><br><strong><br></strong></h5>--%>
                        <asp:Label ID="areasOfInterestLabel" CssClass="mbr-section-title mbr-fonts-style mb-3 display-2" runat="server"></asp:Label>

                    </div>
                    <div class="card col-12 col-md-6">
                        <div class="card-wrapper">
                            <div class="top-line">
                                <h6 class="card-title mbr-fonts-style display-5"><strong>Name</strong></h6>
                                <p class="mbr-text cost mbr-fonts-style display-7"></p>
                            </div>
                            <div class="bottom-line">
                                <p class="mbr-text mbr-fonts-style display-7">
                                    (lil description)
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card col-12 col-md-6">
                        <div class="card-wrapper">
                            <div class="top-line">
                                <h6 class="card-title mbr-fonts-style display-5"><strong>Name</strong></h6>
                                <p class="mbr-text cost mbr-fonts-style display-7"></p>
                            </div>
                            <div class="bottom-line">
                                <p class="mbr-text mbr-fonts-style display-7">
                                    (lil description)
                                </p>
                            </div>
                        </div>
                    </div>

                    <div style="text-align: center" class="navbar-buttons mbr-section-btn">

                        <asp:Button ID="AddC" runat="server" CssClass="btn btn-black display-4" Text="Add Connection" On_Click="Add_Connection"/>
                    </div>

                       <asp:Button ID="RemC" runat="server" CssClass="btn btn-black display-4" Text="Remove Connection" On_Click="Add_Connection"/>
                    </div>

                      <asp:Label ID="lblMadeConMessage" runat="server" Text="Connection Made!" ForeColor ="Red" ></asp:Label>
                </br>
             
                </div>
        </section>

        <section data-bs-version="5.1" class="footer7 cid-t7h85UGhGS" once="footers" id="footer7-r">

            <div class="container">
                <div class="media-container-row align-center mbr-white">
                    <div class="col-12">
                        <p class="mbr-text mb-0 mbr-fonts-style display-7">
                            © Copyright TechArena - All Rights Reserved
                        </p>
                    </div>
                </div>
            </div>
            <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i class="mbr-arrow-up-icon mbr-arrow-up-icon-cm cm-icon cm-icon-smallarrow-up"></i></a></div>
    </form>
</body>

</html>

