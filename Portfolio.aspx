<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Portfolio.aspx.cs" Inherits="Latest_Work.Portfolio" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.6.8, mobirise.com">
  <meta name="twitter:card" content="summary_large_image"/>
  <meta name="twitter:image:src" content="">
  <meta name="twitter:image:src" content="">
  <meta property="og:image" content="">
  <meta name="twitter:title" content="Home">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <meta name="description" content="">
  
  
  <title>Home</title>
  <link rel="stylesheet" href="portfolio/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="portfolio/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="portfolio/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="portfolio/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="portfolio/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="portfolio/assets/theme/css/style.css">
  <link rel="preload" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap"></noscript>
  <link rel="preload" as="style" href="portfolio/assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="portfolio/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
  <form runat="server">
  <section data-bs-version="5.1" class="menu menu2 cid-t6ogsPYxdz" once="menu" id="menu2-2">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container">
            <div class="navbar-brand">
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-7" href="">My portfolio</a></span>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-bs-toggle="collapse" data-target="#navbarSupportedContent" data-bs-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-white display-4" href="">Home</a></li>
                    <li class="nav-item">
                        <a class="nav-link link text-white display-4" href="dashBoard.aspx">Dashboard</a></li>
                    <li class="nav-item"><a class="nav-link link text-white display-4" href="UserProfile.aspx">My Profile</a>
                    </li></ul>
                
                <div class="navbar-buttons mbr-section-btn"><a class="btn btn-black display-4" href="NewCode.aspx">Create New</a></div>
            </div>
        </div>
    </nav>
</section>

<section data-bs-version="5.1" class="team2 cid-t7gaHmcdQ9" xmlns="http://www.w3.org/1999/html" id="team2-b">
    

    
    
    <div class="container>
        <div class="card">
            <div class="card-wrapper">
                <div class="row align-items-center">
                    <div class="col-12 col-md-4">
                        <div class="image-wrapper">
                            <img src="portfolio/assets/images/mbr-1-696x464.jpg" alt="Code"><a href="Portfolio.aspx">Portfolio.aspx</a>
                        </div>
                    </div>
                    <div class="col-12 col-md">
                        <div class="card-box">
                            <h5 class="card-title mbr-fonts-style m-0 mb-3 display-5"><strong>Manager Your Codes!&nbsp;&nbsp;</strong></h5>
                            <h6 class="card-subtitle mbr-fonts-style mb-3 display-4"><strong></strong></h6>
                            <p class="mbr-text mbr-fonts-style display-7">
                                (description here).
                            </p>
                             <div class="navbar-buttons mbr-section-btn">
                                 <asp:Button runat="server" ID="editCodeButton" OnClick="EditCode_Click" CssClass="btn btn-black display-4" Text="Edit Code" />
                                 <br></br><br></br>
                                 <asp:Button runat="server" CssClass="btn btn-black display-4" Text="Delete Code" OnClick="DeleteCode_Click" />
                             </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section data-bs-version="5.1" class="footer7 cid-t7gbgYpoCB" once="footers" id="footer7-d">
    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">
                    © Copyright TechArena - All Rights Reserved
                </p>
            </div>
        </div>
    </div>
  </form>
</body>
</html>
