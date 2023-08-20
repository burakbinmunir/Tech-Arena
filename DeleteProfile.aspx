<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteProfile.aspx.cs" Inherits="Latest_Work.DeleteProfile" %>
<!DOCTYPE html>
<html  >
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.6.8, mobirise.com">
  <meta name="twitter:card" content="summary_large_image"/>
  <meta name="twitter:image:src" content="">
  <meta property="og:image" content="">
  <meta name="twitter:title" content="delete">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <meta name="description" content="">
  
  
  <title>delete</title>
  <link rel="stylesheet" href="deleteprofile/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="deleteprofile/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="deleteprofile/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="deleteprofile/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="deleteprofile/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="deleteprofile/assets/theme/css/style.css">
  <link rel="preload" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap"></noscript>
  <link rel="preload" as="style" href="deleteprofile/assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="deleteprofile/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
  <form runat="server" method="POST" data-rcpha_sitekey="" data-rcpha_secretkey="" class="mbr-form form-with-styler mx-auto" data-verified="">
  <section data-bs-version="5.1" class="menu menu2 cid-t6ogsPYxdz" once="menu" id="menu2-11">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container">
            <div class="navbar-brand">
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-7" href="UserProfile.aspx">My Profile</a></span>
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
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-white display-4" href="">Dashboard</a></li><li class="nav-item"><a class="nav-link link text-white display-4" href="">Home</a></li></ul>
                
                <div class="navbar-buttons mbr-section-btn"><a class="btn btn-black display-4" href="">Search</a> <a class="btn btn-black display-4" href="">Sign out</a></div>
            </div>
        </div>
    </nav>
</section>

<section data-bs-version="5.1" class="form6 cid-t7nWHHg0dA" id="form6-13">
    
    
    <div class="container">
        <div class="mbr-section-head">
            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2"><strong>Account Verification!</strong></h3>
            
        </div>
        <div class="row justify-content-center mt-4">
            <div class="col-lg-8 mx-auto mbr-form">
                
                    <div class="row">
                        
                        <div hidden="hidden" data-form-alert-danger="" class="alert alert-danger col-12">
                            Oops...! some problem!
                        </div>
                    </div>
                    <div class="dragArea row">
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group mb-3" data-for="name">
                            
                            <asp:TextBox runat="server" id="usernameBox" placeholder="Username"  CssClass="form-control" ></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group mb-3" data-for="password">
                            <asp:TextBox runat="server" id="passwordBox" type="password" name="password" placeholder="Password" data-form-field="password" class="form-control" value=""></asp:TextBox>
                        </div>
                        
                        <div class="col-auto mbr-section-btn align-center">
                            <asp:Button runat="server"  Text="Confirm Delete" OnClick="ConfirmDelete_Click"  CssClass="btn btn-primary display-4" />
                    </div>
                
            </div>
        </div>
    </div>
</section>

<section data-bs-version="5.1" class="footer7 cid-t7nWJx4JyC" once="footers" id="footer7-14">

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