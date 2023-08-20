﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteCode.aspx.cs" Inherits="Latest_Work.DeleteCode" %>
<!DOCTYPE html>
<html  >
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.6.8, mobirise.com">
  <meta name="twitter:card" content="summary_large_image"/>
  <meta name="twitter:image:src" content="">
  <meta property="og:image" content="">
  <meta name="twitter:title" content="are you sure">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">

  <meta name="description" content="">
  
  
  <title>are you sure</title>
  <link rel="stylesheet" href="deletecode/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="deletecode/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="deletecode/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="deletecode/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="deletecode/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="deletecode/assets/theme/css/style.css">
  <link rel="preload" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap"></noscript>
  <link rel="preload" as="style" href="deletecode/assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="deletecode/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
    <form runat="server">
  
  <section data-bs-version="5.1" class="menu menu2 cid-t6ogsPYxdz" once="menu" id="menu2-s">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container">
            <div class="navbar-brand">
     
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-7" href="UserProfile.aspx">My Profile &gt;&nbsp;</a><a class="navbar-caption text-white display-7" href="EditCode.aspx">Project Name</a></span>
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
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-white display-4" href="">Dashboard</a></li><li class="nav-item"><a class="nav-link link text-white display-4" ">Home</a></li></ul>
                
                <div class="navbar-buttons mbr-section-btn"><a class="btn btn-black display-4" href="">Search</a> <a class="btn btn-black display-4" href="">Sign out</a></div>
            </div>
        </div>
    </nav>
</section>

<section data-bs-version="5.1" class="content4 cid-t7hygDtWhm" id="content4-x">
    

    
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="title col-md-12 col-lg-10">
                <h3 class="mbr-section-title mbr-fonts-style align-center mb-4 display-2"><strong>Are you sure you want to </strong><br><strong>delete this code?</strong></h3>
                <h4 class="mbr-section-subtitle align-center mbr-fonts-style mb-4 display-7">
                    Disclaimer : deleting this code will remove it from your portfolio.</h4>
                
            </div>
        </div>
    </div>
</section>

<section data-bs-version="5.1" class="content11 cid-t7hxl2E71a" id="content11-w">
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-10">
                <div class="mbr-section-btn align-center">
                    <asp:Button runat="server" Text="Proceed" CssClass="btn btn-warning display-4" OnClick="deleteProject" />
                    <asp:Button runat="server" Text="Cancel" CssClass="btn btn-secondary display-4" OnClick="Cancel_Click" />
            </div>
            </div>
        </div>
    </div>
</section>

<section data-bs-version="5.1" class="footer7 cid-t7hyZsrIgW" once="footers" id="footer7-y">

    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">
                    © Copyright TechArena - All Rights Reserved
                </p>
            </div>
        </div>
    </div>
    </section>
        </form>
</body>
</html>