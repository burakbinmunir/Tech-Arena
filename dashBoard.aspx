<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashBoard.aspx.cs" Inherits="Latest_Work.dashBoard" %>

<!DOCTYPE html>
<html  >
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.6.8, mobirise.com">
  <meta name="twitter:card" content="summary_large_image"/>
  <meta name="twitter:image:src" content="">
  <meta property="og:image" content="">
  <meta name="twitter:title" content="Dashboard">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/hostel-96x95.jpg" type="image/x-icon">
  <meta name="description" content="">
  
  
  <title>Dashboard</title>
  <link rel="stylesheet" href="dashboard/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="dashboard/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="dashboard/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="dashboard/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="dashboard/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="dashboard/assets/theme/css/style.css">
  <link rel="preload" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap"></noscript>
  <link rel="preload" as="style" href="dashboard/assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="dashboard/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
  
  <section data-bs-version="5.1" class="menu menu2 cid-t6ogsPYxdz" once="menu" id="menu2-15">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container">
            <div class="navbar-brand">
              
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-7" href="">Dashboard&nbsp;</a></span>
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
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-white display-4" href="UserProfile.aspx">My Profile</a></li><li class="nav-item"><a class="nav-link link text-white display-4" href="">Search</a></li><li class="nav-item"><a class="nav-link link text-white display-4" href="">Home</a></li></ul>
                
                <div class="navbar-buttons mbr-section-btn"><a class="btn btn-black display-4" href="">My Dashboard</a> <a class="btn btn-black display-4" href="">Sign out</a></div>
            </div>
        </div>
    </nav>
</section>

<section data-bs-version="5.1" class="timeline1 cid-t7ofUsGbTq" id="timeline1-19">
    
    <form runat ="server">
    
    
    <div class="timelines-container container" mbri-timelines="">
        <div class="mbr-section-head">
            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2">
                <strong>Available Courses</strong></h3>
            <h4 class="mbr-section-subtitle mbr-fonts-style align-center mb-0 mt-2 display-7"><em>
                (Click the picture to access the link)</em></h4>
        </div>
        <div class="row timeline-element mb-2 mt-4">
            <div class="timeline-date col-12 col-md-6">
                <div class="timeline-date-wrapper">
                    <p class="mbr-timeline-date mbr-fonts-style display-7">Python is a general-purpose, versatile and popular programming language. It’s great as a first language because it is concise and easy to read, and it is also a good language to have in any programmer’s stack as it can be used for everything from web development to software development and scientific applications.</p>
                </div>
            </div>
            <span class="iconBackground"></span>
            <div class="col-12 col-md-6">
                <div class="timeline-text-wrapper">
                    

                      <asp:Button runat="server" ID="PAdd" CssClass="btn btn-primary display-4" Text="Python (Add Course)" OnClick ="Register_Python"/>
                  
                      <asp:Button runat="server" ID="PRem" CssClass="btn btn-primary display-4" Text="Python (Remove Course)" OnClick ="Drop_Python"/>
                  

                      <div class="image-wrapper mb-4">
                        <a href="https://www.codecademy.com/learn/learn-python" target="_blank"><img src="dashboard/assets/images/python-474x266.png" alt="python" title=""></a>
                    </div>
                    <p class="mbr-text mbr-fonts-style display-7"></p>
                </div>
            </div>
        </div>
        <div class="row timeline-element mb-2">
            <div class="col-12 col-md-6">
                <div class="timeline-text-wrapper">

                   <asp:Button runat="server" ID="RAdd" CssClass="btn btn-primary display-4" Text="Ruby (Add Course)" OnClick ="Register_Ruby"/>
                 
                      <asp:Button runat="server" ID="RRem" CssClass="btn btn-primary display-4" Text="Ruby (Remove Course)" OnClick ="Drop_Ruby"/>
                  
                    <div class="image-wrapper mb-4">
                        <a href="https://www.codecademy.com/learn/learn-ruby" target="_blank"><img src="dashboard/assets/images/ruby-948x593.png" alt="Ruby" title=""></a>
                    </div>
                    <p class="mbr-text mbr-fonts-style display-7"></p>
                </div>
            </div>
            <span class="iconBackground"></span>
            <div class="timeline-date col-12 col-md-6">
                <div class="timeline-date-wrapper">
                    <p class="mbr-timeline-date mbr-fonts-style display-4">Ruby is a general-purpose language that is still popular and in high demand in the marketplace, as it’s more commonly used&nbsp; &nbsp;in Rails applications. Concise and readable, it is easy to pickup and plenty powerful. Companies like Twitter and Goodreads got their products off the ground with Ruby.</p>
                </div>
            </div>
        </div>
        <div class="row timeline-element mb-2">
            <div class="timeline-date col-12 col-md-6">
                <div class="timeline-date-wrapper">
                    <p class="mbr-timeline-date mbr-fonts-style display-7">JavaScript is a text-based programming language that allows you to construct interactive web pages for both the client and server sides. It enables users to add special effects dynamic behavior to the webpage. The power of JavaScript is enormous, and businesses can use it to create outstanding web solutions to ensure a smoother experience for the user.</p>
                </div>
            </div>
            <span class="iconBackground"></span>
            <div class="col-12 col-md-6">
                <div class="timeline-text-wrapper">

                 
                    <asp:Button runat="server" ID="JSAdd" CssClass="btn btn-primary display-4" Text="JavaScript (Add Course)" OnClick ="Register_JavaScript"/>
                 
                    
                      <asp:Button runat="server" ID="JSRem" CssClass="btn btn-primary display-4" Text="JavaScript (Remove Course)" OnClick ="Drop_JavaScript"/>
                  
                    <div class="image-wrapper mb-4">
                        <a href="https://www.udemy.com/course/the-complete-javascript-course/" target="_blank"><img src="dashboard/assets/images/javascript-860x970.png" alt="Java Script" title=""></a>
                    </div>
                    <p class="mbr-text mbr-fonts-style display-7"></p>
                </div>
            </div>
        </div>
        <div class="row timeline-element mb-2">
            <div class="col-12 col-md-6">
                <div class="timeline-text-wrapper">

                  <asp:Button runat="server" ID="KAdd" CssClass="btn btn-primary display-4" Text="Kotlin (Add Course)" OnClick ="Register_Kotlin"/>
                 
                    
                      <asp:Button runat="server" ID="KRem" CssClass="btn btn-primary display-4" Text="Kotlin (Remove Course)" OnClick ="Drop_Kotlin"/>
                  
                     <div class="image-wrapper mb-4">
                        <a href="https://www.codecademy.com/learn/learn-kotlin" target="_blank"><img src="dashboard/assets/images/kotlin-948x494.png" alt="Kotlin" title=""></a>
                    </div>
                    <p class="mbr-text mbr-fonts-style display-7">
                        Use Mobirise website building software to create multiple sites for commercial and non-profit
                        projects.
                    </p>
                </div>
            </div>
            <span class="iconBackground"></span>
            <div class="timeline-date col-12 col-md-6">
                <div class="timeline-date-wrapper">
                    <p class="mbr-timeline-date mbr-fonts-style display-7">Kotlin is a modern, expressive programming language made with developers in mind. Concise, open-source, and safe. Kotlin is a popular language for Android development, Web development, and many more domains that are currently highly in demand in industry.</p>
                </div>
            </div>
        </div>
        <div class="row timeline-element mb-2">
            <div class="timeline-date col-12 col-md-6">
                <div class="timeline-date-wrapper">
                    <p class="mbr-timeline-date mbr-fonts-style display-7">Learn the fundamentals of MATLAB and get started working with advanced mathematical functions and building exciting matrix visualizations. Learning MATLAB can open the door for many jobs in data science, data analysis, computer science, Python, Java, and more.</p>
                </div>
            </div>
            <span class="iconBackground"></span>
            <div class="col-12 col-md-6">
                <div class="timeline-text-wrapper">

                <asp:Button runat="server" ID="MAdd" CssClass="btn btn-primary display-4" Text="MatLab (Add Course)" OnClick ="Register_MatLab"/>
                 
                    
                      <asp:Button runat="server" ID="MRem" CssClass="btn btn-primary display-4" Text="MatLab (Remove Course)" OnClick ="Drop_MatLab"/>

                  
                    <div class="image-wrapper mb-4">
                        <a href="https://www.edx.org/search?q=MATLAB" target="_blank"><img src="dashboard/assets/images/matlab-948x736.png" alt="matlab" title=""></a>
                    </div>
                    <p class="mbr-text mbr-fonts-style display-7">
                        You don't have to code to create your own site. Select one of available themes in the Mobirise
                        sitebuilder.
                    </p>
                </div>
            </div>
        </div>
        <div class="row timeline-element mb-2">
            <div class="col-12 col-md-6">
                <div class="timeline-text-wrapper">

                 <asp:Button runat="server" ID="SAdd" CssClass="btn btn-primary display-4" Text="Swift (Add Course)" OnClick ="Register_Swift"/>
                 
                    
                      <asp:Button runat="server" ID="SRem" CssClass="btn btn-primary display-4" Text="Swift (Remove Course)" OnClick ="Drop_Swift"/>
                  
                    <div class="image-wrapper mb-4">
                        <a href="https://www.codecademy.com/learn/learn-swift" target="_blank"><img src="dashboard/assets/images/swift-948x948.png" alt="Swift" title=""></a>
                    </div>
                    <p class="mbr-text mbr-fonts-style display-7">
                        All sites you create with the Mobirise web builder are mobile-friendly natively. No special
                        actions required.
                    </p>
                </div>
            </div>
            <span class="iconBackground"></span>
            <div class="timeline-date col-12 col-md-6">
                <div class="timeline-date-wrapper">
                    <p class="mbr-timeline-date mbr-fonts-style display-7">Swift is a powerful programming language that is easy and also fun to learn. Best thing is, its code is safe by design, yet also produces software that runs lightning-fast. It is used to build apps for highly in use platforms including  iOS, watchOS, macOS, tvOS, and Linux.</p>
                </div>
            </div>
        </div>
        <div class="row timeline-element mb-2">
            <div class="timeline-date col-12 col-md-6">
                <div class="timeline-date-wrapper">
                    <p class="mbr-timeline-date mbr-fonts-style display-7">Clarity is a new language that brings smart contracts to Bitcoin. It is a decidable language, meaning you can know, with certainty, from the code itself what the program will do. Clarity is interpreted (not compiled) &amp; the source code is published on the blockchain. Clarity gives developers a safe way to build complex smart contracts. The Clarity open-source project is supported by the Stacks ecosystem, Hiro PBC, &amp; Algorand.</p>
                </div>
            </div>
            <span class="iconBackground"></span>
            <div class="col-12 col-md-6">
                <div class="timeline-text-wrapper">

                  <asp:Button runat="server" ID="CAdd" CssClass="btn btn-primary display-4" Text="Clarity (Add Course)" OnClick ="Register_Clarity"/>
                 
                    
                      <asp:Button runat="server" ID="CRem" CssClass="btn btn-primary display-4" Text="Clarity (Remove Course)" OnClick ="Drop_Clarity"/>
                 
                    <div class="image-wrapper mb-4">
                        <a href="https://kasb.teachable.com/p/blockchain-course" target="_blank"><img src="dashboard/assets/images/clarity-948x527.png" alt="Clarity" title=""></a>
                    </div>
                    <p class="mbr-text mbr-fonts-style display-7">
                        Select the theme that suits you. Each theme in the Mobirise site builder contains a set of
                        unique blocks.
                    </p>
                </div>
            </div>
        </div>
    
    </div>
        </form>
</section>

<section data-bs-version="5.1" class="footer7 cid-t7ofOMf21B" once="footers" id="footer7-18">

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