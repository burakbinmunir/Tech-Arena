<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Latest_Work.Search" %>

<style>
    
.fl {
  float: left;
}

</style>
<!DOCTYPE html>
<html  >
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.6.8, mobirise.com">
  <meta name="twitter:card" content="summary_large_image"/>
  <meta name="twitter:image:src" content="">
  <meta property="og:image" content="">
  <meta name="twitter:title" content="Search">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <meta name="description" content="">
  
  
  <title>Search</title>
  <link rel="stylesheet" href="search/assets/web/assets/mobirise-icons2/mobirise2.css">
  <link rel="stylesheet" href="search/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="search/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="search/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="search/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="search/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="search/assets/theme/css/style.css">
  <link rel="preload" href= "https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap"></noscript>
  <link rel="preload" as="style" href="search/assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="search/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
  
  <section data-bs-version="5.1" class="menu menu2 cid-t6ogsPYxdz" once="menu" id="menu2-1a">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container">
            <div class="navbar-brand">
            
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-7" href="">Search&nbsp;</a></span>
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
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-white display-4" href="UserProfile.aspx">My Profile</a></li><li class="nav-item"><a class="nav-link link text-white display-4" href="">Dashboard</a></li><li class="nav-item"><a class="nav-link link text-white display-4" href="">Home</a></li></ul>
                
                <div class="navbar-buttons mbr-section-btn"><a class="btn btn-black display-4" href="">Sign out</a></div>
            </div>
        </div>
    </nav>
</section>

<section data-bs-version="5.1" class="form1 cid-t7oUBHgBPv mbr-fullscreen" id="form1-1c">

    

    
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 mx-auto mbr-form">
                <form  runat="server" method="POST" class="mbr-form form-with-styler" data-verified="">
                    <div class="row">
                        
                        <div hidden="hidden" data-form-alert-danger="" class="alert alert-danger col-12">
                            Oops...! some problem!
                        </div>
                    </div>
                    <div class="dragArea row">
                        <div class="col-12">
                            <h1 class="mbr-section-title mb-4 mbr-fonts-style align-center display-2"><strong>Make Worldwide Connections</strong></br> <em>on one click!</em></h1>
                        </div>
                        <div class="col-12">
                            <p class="mbr-text mbr-fonts-style mb-5 align-center display-7"></p>
                        </div>

                        <div class='parent'>
   <div class="col-md col-12 form-group mb-3 fl" data-for="name">
                         <asp:TextBox runat="server" type="text" name="name" placeholder="Enter username/project name here" data-form-field="name" class="form-control" id="searchText" />
                        </div>
                        <div>
                            <asp:DropDownList ID="searchFilter" CssClass="btn btn-primary display-4 fl" runat="server" required="required">
                               
                                <asp:ListItem Text="Filter" Value="F"></asp:ListItem>
                                <asp:ListItem Text="Connection" Value="C"></asp:ListItem>
                                <asp:ListItem Text="Project" Value="P"></asp:ListItem>
                                
                            </asp:DropDownList>
                            <br />
                            <br /><br />
</div>
 
</div>

                      <br /><br />  <br /><br />  <br /><br />

                      

                        <asp:Button runat="server" CssClass="btn btn-primary " Text="Search" OnClick ="Search_Process"/>
                    </div>

                     <asp:Label ID="lblFoundMessage" CssClass="mbr-text mbr-fonts-style" runat="server" Text="No such username found" ForeColor ="Red" ></asp:Label>
                             <br />


                </form>
            </div>
        </div>
    </div>
</section>

<section data-bs-version="5.1" class="footer7 cid-t7ofOMf21B" once="footers" id="footer7-1b">

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