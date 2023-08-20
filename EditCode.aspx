<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCode.aspx.cs" Inherits="Latest_Work.EditCode" %>
<!DOCTYPE html>
<html  >
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.6.8, mobirise.com">
  <meta name="twitter:card" content="summary_large_image"/>
  <meta name="twitter:image:src" content="">
  <meta property="og:image" content="">
  <meta name="twitter:title" content="New Code">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <meta name="description" content="">
  
  
  <title>New Code</title>
  <link rel="stylesheet" href="editcode/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="editcode/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="editcode/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="editcode/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="editcode/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="editcode/assets/theme/css/style.css">
  <link rel="preload" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap"></noscript>
  <link rel="preload" as="style" href="editcode/assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="editcode/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
  <form runat="server"  method="POST" class="mbr-form form-with-styler" data-verified="">
  <section data-bs-version="5.1" class="menu menu2 cid-t6ogsPYxdz" once="menu" id="menu2-e">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container">
            <div class="navbar-brand">
               
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-7" href="UserProfile.aspx">My Profile &gt;&nbsp;</a>
                    <asp:Label runat="server"  ID="projectName" CssClass="navbar-caption text-white display-7" href="EditCode.aspx"></asp:Label>
                    </span>
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

<section data-bs-version="5.1" class="form5 cid-t7gxgQUFI1" id="form5-h">
    
    
    <div class="container-fluid">
        <div class="mbr-section-head">
            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2"><strong>Edit your code here!</strong></h3>
            <h4 class="mbr-section-subtitle mbr-fonts-style align-center mb-0 mt-2 display-4"><em>A safe platform to connect through coding</em></h4>
        </div>
        <div class="row justify-content-center mt-4">
            <div class="col-lg-8 mx-auto mbr-form">
                
                    <div class="row">
                        
                        <div hidden="hidden" data-form-alert-danger="" class="alert alert-danger col-12">
                            Oops...! some problem!
                        </div>
                    </div>
                    <div class="dragArea row">
                        
                        <div class="col-md col-sm-12 form-group mb-3" data-for="email">
                            <asp:TextBox runat="server"  name="email" placeholder="Code File Name"  CssClass="form-control" value="" id="codeFileNameBox"></asp:TextBox>
                        </div>
                        
                        <div class="col-12 form-group mb-3" data-for="textarea">
                            <asp:TextBox runat="server" name="textarea" placeholder="Description(this will appear on your portfolio)" data-form-field="textarea" CssClass="form-control" id="descriptionBox"></asp:TextBox>
                        </div>
                         <div class="col-md col-sm-12 form-group mb-3" data-for="codefile">
                            <asp:TextBox runat="server" style="height:400px" type="text" name="codefile" placeholder="Add Code File" data-form-field="codefile" CssClass="form-control" value="" id="codeFileBox"></asp:TextBox>
                        </div>
                        <div class="col-md col-sm-12 form-group mb-3" style="height:100px" data-for="readme">
                            <asp:TextBox runat="server" style="height:400px"  type="text" name="readme" placeholder="Add Readme File" data-form-field="readme" CssClass="form-control" value="" id="readMeFileBOx"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 align-center mbr-section-btn">
                            <asp:Button ID="updateButton" runat="server" type="button" CssClass="btn btn-success display-4" Text="Update" OnClick="UpdateCode" />
                        </div>
                    </div>
                </form>
            
       
   

<section data-bs-version="5.1" class="footer7 cid-t7gxy7n6kk" once="footers" id="footer7-i">

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
</body>
</html>