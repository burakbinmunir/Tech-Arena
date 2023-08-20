<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile1.aspx.cs" Inherits="Latest_Work.EditProfile1" %>
<!DOCTYPE html>
<html  >
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.6.8, mobirise.com">
  <meta name="twitter:card" content="summary_large_image"/>
  <meta name="twitter:image:src" content="">
  <meta property="og:image" content="">
  <meta name="twitter:title" content="EditProfile1">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <meta name="description" content="">
  
  
  <title>EditProfile1</title>
  <link rel="stylesheet" href="editprofile/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="editprofile/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="editprofile/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="editprofile/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="editprofile/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="editprofile/assets/theme/css/style.css">
  <link rel="preload" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap"></noscript>
  <link rel="preload" as="style" href="editprofile/assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="editprofile/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
     <form action=""  runat="server" method="POST" data-rcpha_sitekey="" data-rcpha_secretkey="" class="mbr-form form-with-styler mx-auto" data-verified="">
  
  <section data-bs-version="5.1" class="menu menu2 cid-t6ogsPYxdz" once="menu" id="menu2-1d">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container">
            <div class="navbar-brand">
                
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-7" href="">Edit Profile&nbsp;</a></span>
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
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-white display-4" href="">My Profile</a></li><li class="nav-item"><a class="nav-link link text-white display-4" href="">Search</a></li><li class="nav-item"><a class="nav-link link text-white display-4" href="">Dashboard</a></li><li class="nav-item"><a class="nav-link link text-white display-4" href="">Home</a></li></ul>
                
                <div class="navbar-buttons mbr-section-btn">
                    
                    <asp:Button runat="server" Text="SignOut" ID="signoutButton" CssClass="btn btn-black display-4" OnClick="SignOut" />

                </div>
            </div>
        </div>
    </nav>
</section>

<section data-bs-version="5.1" class="form6 cid-t7sRxliLmt" id="form6-1f">
    
    
    <div class="container">
        <div class="mbr-section-head">
            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-7"><strong>Want to change username/password?</strong></h3>
            
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
                            <asp:TextBox runat="server" type="text" name="name" placeholder="Username" data-form-field="name" CssClass="form-control" value="" id="newUserNameBox"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group mb-3" data-for="oldpassword">
                            <asp:TextBox runat="server" type="password" name="oldpassword" placeholder="Old password" data-form-field="oldpassword" CssClass="form-control" value="" id="oldPasswordBox"></asp:TextBox>
                        </div>
                        <div data-for="password" class="col-lg-12 col-md-12 col-sm-12 form-group mb-3">
                            <asp:TextBox runat="server" type="password" name="password" placeholder="New password" data-form-field="password" CssClass="form-control" value="" id="newPasswordBox"></asp:TextBox>
                        </div>
                         <div class="col-lg-12 col-md-12 col-sm-12 form-group mb-3" data-for="newpassword">
                            <asp:TextBox runat="server" type="password" name="newpassword" placeholder="Confirm password" data-form-field="newpassword" class="form-control" value="" id="confirmPasswordBox"></asp:TextBox>
                       
  
            </div>
        </div>
    </div>
</section>

<section data-bs-version="5.1" class="form5 cid-t7sRUoBHeX" id="form5-1g">
    
    
    <div class="container">
        <div class="mbr-section-head">
            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-7"><strong>Want to update your additional information?</strong></h3>
            
        </div>
        <div class="row justify-content-center mt-4">
            <div class="col-lg-8 mx-auto mbr-form">
  
                    <div class="row">
                        
                        <div hidden="hidden" data-form-alert-danger="" class="alert alert-danger col-12">
                            Oops...! some problem!
                        </div>
                    </div>
                    <div class="dragArea row">
                        <div class="col-md col-sm-12 form-group mb-3" data-for="dropdown">
                              <asp:DropDownList runat="server" name="profilemode" id="newProfileMode" placeholder="Qualification" data-form-field="dropdown" class="form-control" value="" >
                                            <asp:ListItem value="Post Graduate" >Post Graduate</asp:ListItem>
                                            <asp:ListItem value="Graduate" >Graduate</asp:ListItem>
                                            <asp:ListItem value="Under Graduate" >Under Graduate</asp:ListItem>
                                            <asp:ListItem value="" selected="True">Qualification</asp:ListItem> 
                              </asp:DropDownList>
                             
                      </div>
                        <div class="col-md col-sm-12 form-group mb-3" data-for="email">
                            <asp:TextBox runat="server" type="email" name="email" placeholder="Email Address" data-form-field="email" CssClass="form-control" value="" id="newEmailBox"></asp:TextBox>
                        </div>
                       
                        <div class="col-12 form-group mb-3" data-for="textarea">
                            <textarea name="textarea" placeholder="Description" data-form-field="textarea" class="form-control" id="textarea-form5-1g"></textarea>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 align-center mbr-section-btn">
                            <asp:Label ID="lblErrorMessage" runat="server" Text="Password Donot Match" ForeColor ="Red" ></asp:Label>
                            <asp:Button runat="server"  CssClass="btn btn-primary display-4"  Text="Save Changes" OnClick="SaveChanges"  />
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<section data-bs-version="5.1" class="footer7 cid-t7ofOMf21B" once="footers" id="footer7-1e">


    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">
                    © Copyright TechArena - All Rights Reserved
                </p>
            </div>
        </div>
    </div>

</body>
</html>