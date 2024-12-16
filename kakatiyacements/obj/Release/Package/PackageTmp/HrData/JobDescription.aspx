<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobDescription.aspx.cs" Inherits="kakatiyacements.HrData.JobDescription" %>

<!DOCTYPE html>
<html class="no-js" lang="">



<head>
    <meta charset="utf-8">
    <title>:: Welcome to Kakatiya Cement Sugar and Industries ::</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  
    <!-- Favicon Start Here -->
    <link rel="shortcut icon" type="image/x-icon" href="../fav.png">
    <!-- Bootstrap Css Start Here -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- Magnific Css Start Here -->
    <link rel="stylesheet" href="../css/magnific-popup.css">
    <!-- Animate Css Start Here -->
    <link rel="stylesheet" href="../css/animate.css">
    <!-- Owl Carousel Start Here -->
    <link rel="stylesheet" href="../vendor/owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="../vendor/owlcarousel/owl.theme.default.min.css">
    <!-- Nivo Slider Start Here -->
    <link rel="stylesheet" href="../vendor/nivo-slider/nivo-slider.css">
    <!-- Animate Css Start Here -->
    <link rel="stylesheet" href="../css/animate.min.css">
    <!-- Slick Css Start Here -->
    <link rel="stylesheet" href="../css/slick.css">
    <link rel="stylesheet" href="../css/slick-theme.css">
    <!-- Meanmenu Css Start Here -->
    <link rel="stylesheet" href="../css/meanmenu.min.css">
    <!-- All min Css Start Here -->
    <link rel="stylesheet" href="../css/all.min.css">
    <!-- Style Css Start Here -->
    <link rel="stylesheet" href="../style.css">
    <!-- Google Font Start Here -->
    <link rel="preconnect" href="https://fonts.gstatic.com/">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,400&amp;display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com/">
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@400;500;600;700;800&amp;display=swap" rel="stylesheet">
    <style>
        .breadcrumb-wrap {
            background-image: url(../img/strips/career.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }
    </style>
    <link rel='stylesheet' id='wp-block-library-css' href='../css/contact-page.css' type='text/css' media='all' />

    <link rel="stylesheet" href="https://unpkg.com/react-quill@1.3.3/dist/quill.snow.css" />

    <style>
        .app .text-editor .ql-editor {
            min-height: 30vh;
            border: 1px solid #ccc;
        }
    </style>

</head>
<body class="sticky-header">

      <a href="#wrapper" data-type="section-switch" class="scrollup backtop"><i class="fas fa-angle-double-up"></i></a>

    <div id="preloader"></div>

    <div class="wrapper" id="wrapper">

        <header class="header">
            <div id="header-topbar" class="header-topbar-layout2">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-6 col-lg-6">
                            <div class="logo-area2">
                                <a href="../index.html" class="temp-logo">
                                    <img src="../img/logo1.png" alt="logo" class="img-fluid">
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-6 d-flex justify-content-end">
                            <div class="topbar-right2">
                                <ul>
                                    <li>
                                        <div class="media">
                                            <div class="item-icon">
                                                <i class="fas fa-phone-alt"></i>
                                            </div>
                                            <div class="media-body">
                                                <div class="item-number">Welcome</div>
   <div class="item-number" id="userDetails" runat="server"></div>
                                            </div>
                                        </div>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="rt-sticky-placeholder"></div>
            <div id="header-menu" class="header-menu menu-layout1">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-10 col-lg-10 d-flex justify-content-start position-static">
                            <nav id="dropdown" class="template-main-menu template-main-menu2">
                                <ul>
    
      <li><a href="GetCareesData.aspx">Careers Data</a></li>
  <li><a href="JobDescription.aspx">Add Job Description</a></li>
   <li><a href="../Admin/ContactInfo.aspx">Add ContactInfo</a></li>
   <li><a href="../Admin/MailData.aspx">Add Mail Data</a></li>                                                                    
<li><a href="../Admin/AddUser.aspx" id="adminListItem" runat="server">Admin</a></li>  
<li><a href="../index.html">Logout</a></li>
    </ul>
                            </nav>
                        </div>
                        <div class="col-xl-2 col-lg-2 d-flex justify-content-end">
                            <div class="header-action-layout1">
                                <ul>
                                    <li class="search-btn">
                                        <a href="#header-search" title="Search">
                                            <i class="fas fa-search"></i>
                                        </a>
                                    </li>
                                    <li class="offcanvas-menu-trigger-wrap">
                                        <button type="button" class="offcanvas-menu-btn menu-status-open">
                                            <span class="btn-icon-wrap">
                                                <span></span>
                                                <span></span>
                                                <span></span>
                                            </span>
                                        </button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!--=====================================-->
        <!--=            Breadcrumb Start       =-->
        <!--=====================================-->
        <section class="breadcrumb-wrap">
            <div class="breadcrumb-img1">
                <img src="../img/figure/figure79.png" alt="figure" width="223" height="109">
            </div>
            <div class="breadcrumb-img2">
                <img src="../img/figure/figure78.png" alt="figure" width="185" height="56">
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb-box">
                            <h1 class="page-title">Join us</h1>
                            <nav>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item"><a href="careers.html">Careers</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Join us</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--=====================================-->
        <!--=            Pricing Start          =-->
        <!--=====================================-->
        <section class="about-wrap-layout1">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12">
                        <div class="title" style=" padding-bottom: 20px;">
                            <h4>Join us</h4>
                        </div>
                        <div class="contact-form">
                            <div class="wpcf7 js" id="wpcf7-f560-p384-o1" lang="en-US" dir="ltr">
                                <div class="screen-reader-response"><p role="status" aria-live="polite" aria-atomic="true"></p> <ul></ul></div>
                                <form  class="wpcf7-form init" aria-label="Contact form" >
                                    <div style="display: none;">
                                        <input type="hidden" name="_wpcf7" value="560">
                                        <input type="hidden" name="_wpcf7_version" value="5.8.2">
                                        <input type="hidden" name="_wpcf7_locale" value="en_US">
                                        <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f560-p384-o1">
                                        <input type="hidden" name="_wpcf7_container_post" value="384">
                                        <input type="hidden" name="_wpcf7_posted_data_hash" value="">
                                    </div>
                                    <div class="default-form2">
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <div class="input-box">
                                                    <div class="field moveindate">
                                                        <label for="MoveInDate"><b>Job Title</b></label>
                                                        <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="Title" id="Title"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-12">
                                                <div class="input-box">
                                                    <div class="field moveindate">
                                                        <label for="MoveInDate"><b>Job Description</b></label>
                                                        <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="JobDescription" id="JobDescription"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-12">
                                                <div class="input-box">
                                                    <label for="MoveInDate"><b>Poinst Wise</b></label>
                                                    <div id="root"><div class="app"><div class="quill text-editor"><div class="ql-toolbar ql-snow"><span class="ql-formats"><button type="button" class="ql-bold"><svg viewBox="0 0 18 18"> <path class="ql-stroke" d="M5,4H9.5A2.5,2.5,0,0,1,12,6.5v0A2.5,2.5,0,0,1,9.5,9H5A0,0,0,0,1,5,9V4A0,0,0,0,1,5,4Z"></path> <path class="ql-stroke" d="M5,9h5.5A2.5,2.5,0,0,1,13,11.5v0A2.5,2.5,0,0,1,10.5,14H5a0,0,0,0,1,0,0V9A0,0,0,0,1,5,9Z"></path> </svg></button><button type="button" class="ql-italic"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="13" y1="4" y2="4"></line> <line class="ql-stroke" x1="5" x2="11" y1="14" y2="14"></line> <line class="ql-stroke" x1="8" x2="10" y1="14" y2="4"></line> </svg></button><button type="button" class="ql-underline"><svg viewBox="0 0 18 18"> <path class="ql-stroke" d="M5,3V9a4.012,4.012,0,0,0,4,4H9a4.012,4.012,0,0,0,4-4V3"></path> <rect class="ql-fill" height="1" rx="0.5" ry="0.5" width="12" x="3" y="15"></rect> </svg></button><button type="button" class="ql-strike"><svg viewBox="0 0 18 18"> <line class="ql-stroke ql-thin" x1="15.5" x2="2.5" y1="8.5" y2="9.5"></line> <path class="ql-fill" d="M9.007,8C6.542,7.791,6,7.519,6,6.5,6,5.792,7.283,5,9,5c1.571,0,2.765.679,2.969,1.309a1,1,0,0,0,1.9-.617C13.356,4.106,11.354,3,9,3,6.2,3,4,4.538,4,6.5a3.2,3.2,0,0,0,.5,1.843Z"></path> <path class="ql-fill" d="M8.984,10C11.457,10.208,12,10.479,12,11.5c0,0.708-1.283,1.5-3,1.5-1.571,0-2.765-.679-2.969-1.309a1,1,0,1,0-1.9.617C4.644,13.894,6.646,15,9,15c2.8,0,5-1.538,5-3.5a3.2,3.2,0,0,0-.5-1.843Z"></path> </svg></button></span><span class="ql-formats"><button type="button" class="ql-blockquote"><svg viewBox="0 0 18 18"> <rect class="ql-fill ql-stroke" height="3" width="3" x="4" y="5"></rect> <rect class="ql-fill ql-stroke" height="3" width="3" x="11" y="5"></rect> <path class="ql-even ql-fill ql-stroke" d="M7,8c0,4.031-3,5-3,5"></path> <path class="ql-even ql-fill ql-stroke" d="M14,8c0,4.031-3,5-3,5"></path> </svg></button><button type="button" class="ql-code-block"><svg viewBox="0 0 18 18"> <polyline class="ql-even ql-stroke" points="5 7 3 9 5 11"></polyline> <polyline class="ql-even ql-stroke" points="13 7 15 9 13 11"></polyline> <line class="ql-stroke" x1="10" x2="8" y1="5" y2="13"></line> </svg></button></span><span class="ql-formats"><button type="button" class="ql-header" value="1"><svg viewBox="0 0 18 18"> <path class="ql-fill" d="M10,4V14a1,1,0,0,1-2,0V10H3v4a1,1,0,0,1-2,0V4A1,1,0,0,1,3,4V8H8V4a1,1,0,0,1,2,0Zm6.06787,9.209H14.98975V7.59863a.54085.54085,0,0,0-.605-.60547h-.62744a1.01119,1.01119,0,0,0-.748.29688L11.645,8.56641a.5435.5435,0,0,0-.022.8584l.28613.30762a.53861.53861,0,0,0,.84717.0332l.09912-.08789a1.2137,1.2137,0,0,0,.2417-.35254h.02246s-.01123.30859-.01123.60547V13.209H12.041a.54085.54085,0,0,0-.605.60547v.43945a.54085.54085,0,0,0,.605.60547h4.02686a.54085.54085,0,0,0,.605-.60547v-.43945A.54085.54085,0,0,0,16.06787,13.209Z"></path> </svg></button><button type="button" class="ql-header" value="2"><svg viewBox="0 0 18 18"> <path class="ql-fill" d="M16.73975,13.81445v.43945a.54085.54085,0,0,1-.605.60547H11.855a.58392.58392,0,0,1-.64893-.60547V14.0127c0-2.90527,3.39941-3.42187,3.39941-4.55469a.77675.77675,0,0,0-.84717-.78125,1.17684,1.17684,0,0,0-.83594.38477c-.2749.26367-.561.374-.85791.13184l-.4292-.34082c-.30811-.24219-.38525-.51758-.1543-.81445a2.97155,2.97155,0,0,1,2.45361-1.17676,2.45393,2.45393,0,0,1,2.68408,2.40918c0,2.45312-3.1792,2.92676-3.27832,3.93848h2.79443A.54085.54085,0,0,1,16.73975,13.81445ZM9,3A.99974.99974,0,0,0,8,4V8H3V4A1,1,0,0,0,1,4V14a1,1,0,0,0,2,0V10H8v4a1,1,0,0,0,2,0V4A.99974.99974,0,0,0,9,3Z"></path> </svg></button></span><span class="ql-formats"><button type="button" class="ql-list" value="ordered"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="15" y1="4" y2="4"></line> <line class="ql-stroke" x1="7" x2="15" y1="9" y2="9"></line> <line class="ql-stroke" x1="7" x2="15" y1="14" y2="14"></line> <line class="ql-stroke ql-thin" x1="2.5" x2="4.5" y1="5.5" y2="5.5"></line> <path class="ql-fill" d="M3.5,6A0.5,0.5,0,0,1,3,5.5V3.085l-0.276.138A0.5,0.5,0,0,1,2.053,3c-0.124-.247-0.023-0.324.224-0.447l1-.5A0.5,0.5,0,0,1,4,2.5v3A0.5,0.5,0,0,1,3.5,6Z"></path> <path class="ql-stroke ql-thin" d="M4.5,10.5h-2c0-.234,1.85-1.076,1.85-2.234A0.959,0.959,0,0,0,2.5,8.156"></path> <path class="ql-stroke ql-thin" d="M2.5,14.846a0.959,0.959,0,0,0,1.85-.109A0.7,0.7,0,0,0,3.75,14a0.688,0.688,0,0,0,.6-0.736,0.959,0.959,0,0,0-1.85-.109"></path> </svg></button><button type="button" class="ql-list" value="bullet"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="6" x2="15" y1="4" y2="4"></line> <line class="ql-stroke" x1="6" x2="15" y1="9" y2="9"></line> <line class="ql-stroke" x1="6" x2="15" y1="14" y2="14"></line> <line class="ql-stroke" x1="3" x2="3" y1="4" y2="4"></line> <line class="ql-stroke" x1="3" x2="3" y1="9" y2="9"></line> <line class="ql-stroke" x1="3" x2="3" y1="14" y2="14"></line> </svg></button></span><span class="ql-formats"><button type="button" class="ql-script" value="sub"><svg viewBox="0 0 18 18"> <path class="ql-fill" d="M15.5,15H13.861a3.858,3.858,0,0,0,1.914-2.975,1.8,1.8,0,0,0-1.6-1.751A1.921,1.921,0,0,0,12.021,11.7a0.50013,0.50013,0,1,0,.957.291h0a0.914,0.914,0,0,1,1.053-.725,0.81,0.81,0,0,1,.744.762c0,1.076-1.16971,1.86982-1.93971,2.43082A1.45639,1.45639,0,0,0,12,15.5a0.5,0.5,0,0,0,.5.5h3A0.5,0.5,0,0,0,15.5,15Z"></path> <path class="ql-fill" d="M9.65,5.241a1,1,0,0,0-1.409.108L6,7.964,3.759,5.349A1,1,0,0,0,2.192,6.59178Q2.21541,6.6213,2.241,6.649L4.684,9.5,2.241,12.35A1,1,0,0,0,3.71,13.70722q0.02557-.02768.049-0.05722L6,11.036,8.241,13.65a1,1,0,1,0,1.567-1.24277Q9.78459,12.3777,9.759,12.35L7.316,9.5,9.759,6.651A1,1,0,0,0,9.65,5.241Z"></path> </svg></button><button type="button" class="ql-script" value="super"><svg viewBox="0 0 18 18"> <path class="ql-fill" d="M15.5,7H13.861a4.015,4.015,0,0,0,1.914-2.975,1.8,1.8,0,0,0-1.6-1.751A1.922,1.922,0,0,0,12.021,3.7a0.5,0.5,0,1,0,.957.291,0.917,0.917,0,0,1,1.053-.725,0.81,0.81,0,0,1,.744.762c0,1.077-1.164,1.925-1.934,2.486A1.423,1.423,0,0,0,12,7.5a0.5,0.5,0,0,0,.5.5h3A0.5,0.5,0,0,0,15.5,7Z"></path> <path class="ql-fill" d="M9.651,5.241a1,1,0,0,0-1.41.108L6,7.964,3.759,5.349a1,1,0,1,0-1.519,1.3L4.683,9.5,2.241,12.35a1,1,0,1,0,1.519,1.3L6,11.036,8.241,13.65a1,1,0,0,0,1.519-1.3L7.317,9.5,9.759,6.651A1,1,0,0,0,9.651,5.241Z"></path> </svg></button></span><span class="ql-formats"><button type="button" class="ql-indent" value="-1"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="3" x2="15" y1="14" y2="14"></line> <line class="ql-stroke" x1="3" x2="15" y1="4" y2="4"></line> <line class="ql-stroke" x1="9" x2="15" y1="9" y2="9"></line> <polyline class="ql-stroke" points="5 7 5 11 3 9 5 7"></polyline> </svg></button><button type="button" class="ql-indent" value="+1"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="3" x2="15" y1="14" y2="14"></line> <line class="ql-stroke" x1="3" x2="15" y1="4" y2="4"></line> <line class="ql-stroke" x1="9" x2="15" y1="9" y2="9"></line> <polyline class="ql-fill ql-stroke" points="3 7 3 11 5 9 3 7"></polyline> </svg></button></span><span class="ql-formats"><button type="button" class="ql-direction" value="rtl"><svg viewBox="0 0 18 18"> <polygon class="ql-stroke ql-fill" points="3 11 5 9 3 7 3 11"></polygon> <line class="ql-stroke ql-fill" x1="15" x2="11" y1="4" y2="4"></line> <path class="ql-fill" d="M11,3a3,3,0,0,0,0,6h1V3H11Z"></path> <rect class="ql-fill" height="11" width="1" x="11" y="4"></rect> <rect class="ql-fill" height="11" width="1" x="13" y="4"></rect> </svg><svg viewBox="0 0 18 18"> <polygon class="ql-stroke ql-fill" points="15 12 13 10 15 8 15 12"></polygon> <line class="ql-stroke ql-fill" x1="9" x2="5" y1="4" y2="4"></line> <path class="ql-fill" d="M5,3A3,3,0,0,0,5,9H6V3H5Z"></path> <rect class="ql-fill" height="11" width="1" x="5" y="4"></rect> <rect class="ql-fill" height="11" width="1" x="7" y="4"></rect> </svg></button></span><span class="ql-formats"><span class="ql-size ql-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-0"><svg viewBox="0 0 18 18"> <polygon class="ql-stroke" points="7 11 9 13 11 11 7 11"></polygon> <polygon class="ql-stroke" points="7 7 9 5 11 7 7 7"></polygon> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-0"><span tabindex="0" role="button" class="ql-picker-item" data-value="small"></span><span tabindex="0" role="button" class="ql-picker-item ql-selected"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="large"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="huge"></span></span></span><select class="ql-size" style="display: none;"><option value="small"></option><option selected="selected"></option><option value="large"></option><option value="huge"></option></select></span><span class="ql-formats"><span class="ql-header ql-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-1"><svg viewBox="0 0 18 18"> <polygon class="ql-stroke" points="7 11 9 13 11 11 7 11"></polygon> <polygon class="ql-stroke" points="7 7 9 5 11 7 7 7"></polygon> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-1"><span tabindex="0" role="button" class="ql-picker-item" data-value="1"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="2"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="3"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="4"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="5"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="6"></span><span tabindex="0" role="button" class="ql-picker-item ql-selected"></span></span></span><select class="ql-header" style="display: none;"><option value="1"></option><option value="2"></option><option value="3"></option><option value="4"></option><option value="5"></option><option value="6"></option><option selected="selected"></option></select></span><span class="ql-formats"><span class="ql-color ql-picker ql-color-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-2"><svg viewBox="0 0 18 18"> <line class="ql-color-label ql-stroke ql-transparent" x1="3" x2="15" y1="15" y2="15"></line> <polyline class="ql-stroke" points="5.5 11 9 3 12.5 11"></polyline> <line class="ql-stroke" x1="11.63" x2="6.38" y1="9" y2="9"></line> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-2"><span tabindex="0" role="button" class="ql-picker-item ql-selected ql-primary"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#e60000" style="background-color: rgb(230, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#ff9900" style="background-color: rgb(255, 153, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#ffff00" style="background-color: rgb(255, 255, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#008a00" style="background-color: rgb(0, 138, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#0066cc" style="background-color: rgb(0, 102, 204);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#9933ff" style="background-color: rgb(153, 51, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffffff" style="background-color: rgb(255, 255, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#facccc" style="background-color: rgb(250, 204, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffebcc" style="background-color: rgb(255, 235, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffffcc" style="background-color: rgb(255, 255, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#cce8cc" style="background-color: rgb(204, 232, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#cce0f5" style="background-color: rgb(204, 224, 245);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ebd6ff" style="background-color: rgb(235, 214, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#bbbbbb" style="background-color: rgb(187, 187, 187);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#f06666" style="background-color: rgb(240, 102, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffc266" style="background-color: rgb(255, 194, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffff66" style="background-color: rgb(255, 255, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#66b966" style="background-color: rgb(102, 185, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#66a3e0" style="background-color: rgb(102, 163, 224);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#c285ff" style="background-color: rgb(194, 133, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#888888" style="background-color: rgb(136, 136, 136);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#a10000" style="background-color: rgb(161, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#b26b00" style="background-color: rgb(178, 107, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#b2b200" style="background-color: rgb(178, 178, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#006100" style="background-color: rgb(0, 97, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#0047b2" style="background-color: rgb(0, 71, 178);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#6b24b2" style="background-color: rgb(107, 36, 178);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#444444" style="background-color: rgb(68, 68, 68);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#5c0000" style="background-color: rgb(92, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#663d00" style="background-color: rgb(102, 61, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#666600" style="background-color: rgb(102, 102, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#003700" style="background-color: rgb(0, 55, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#002966" style="background-color: rgb(0, 41, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#3d1466" style="background-color: rgb(61, 20, 102);"></span></span></span><select class="ql-color" style="display: none;"><option selected="selected"></option><option value="#e60000"></option><option value="#ff9900"></option><option value="#ffff00"></option><option value="#008a00"></option><option value="#0066cc"></option><option value="#9933ff"></option><option value="#ffffff"></option><option value="#facccc"></option><option value="#ffebcc"></option><option value="#ffffcc"></option><option value="#cce8cc"></option><option value="#cce0f5"></option><option value="#ebd6ff"></option><option value="#bbbbbb"></option><option value="#f06666"></option><option value="#ffc266"></option><option value="#ffff66"></option><option value="#66b966"></option><option value="#66a3e0"></option><option value="#c285ff"></option><option value="#888888"></option><option value="#a10000"></option><option value="#b26b00"></option><option value="#b2b200"></option><option value="#006100"></option><option value="#0047b2"></option><option value="#6b24b2"></option><option value="#444444"></option><option value="#5c0000"></option><option value="#663d00"></option><option value="#666600"></option><option value="#003700"></option><option value="#002966"></option><option value="#3d1466"></option></select><span class="ql-background ql-picker ql-color-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-3"><svg viewBox="0 0 18 18"> <g class="ql-fill ql-color-label"> <polygon points="6 6.868 6 6 5 6 5 7 5.942 7 6 6.868"></polygon> <rect height="1" width="1" x="4" y="4"></rect> <polygon points="6.817 5 6 5 6 6 6.38 6 6.817 5"></polygon> <rect height="1" width="1" x="2" y="6"></rect> <rect height="1" width="1" x="3" y="5"></rect> <rect height="1" width="1" x="4" y="7"></rect> <polygon points="4 11.439 4 11 3 11 3 12 3.755 12 4 11.439"></polygon> <rect height="1" width="1" x="2" y="12"></rect> <rect height="1" width="1" x="2" y="9"></rect> <rect height="1" width="1" x="2" y="15"></rect> <polygon points="4.63 10 4 10 4 11 4.192 11 4.63 10"></polygon> <rect height="1" width="1" x="3" y="8"></rect> <path d="M10.832,4.2L11,4.582V4H10.708A1.948,1.948,0,0,1,10.832,4.2Z"></path> <path d="M7,4.582L7.168,4.2A1.929,1.929,0,0,1,7.292,4H7V4.582Z"></path> <path d="M8,13H7.683l-0.351.8a1.933,1.933,0,0,1-.124.2H8V13Z"></path> <rect height="1" width="1" x="12" y="2"></rect> <rect height="1" width="1" x="11" y="3"></rect> <path d="M9,3H8V3.282A1.985,1.985,0,0,1,9,3Z"></path> <rect height="1" width="1" x="2" y="3"></rect> <rect height="1" width="1" x="6" y="2"></rect> <rect height="1" width="1" x="3" y="2"></rect> <rect height="1" width="1" x="5" y="3"></rect> <rect height="1" width="1" x="9" y="2"></rect> <rect height="1" width="1" x="15" y="14"></rect> <polygon points="13.447 10.174 13.469 10.225 13.472 10.232 13.808 11 14 11 14 10 13.37 10 13.447 10.174"></polygon> <rect height="1" width="1" x="13" y="7"></rect> <rect height="1" width="1" x="15" y="5"></rect> <rect height="1" width="1" x="14" y="6"></rect> <rect height="1" width="1" x="15" y="8"></rect> <rect height="1" width="1" x="14" y="9"></rect> <path d="M3.775,14H3v1H4V14.314A1.97,1.97,0,0,1,3.775,14Z"></path> <rect height="1" width="1" x="14" y="3"></rect> <polygon points="12 6.868 12 6 11.62 6 12 6.868"></polygon> <rect height="1" width="1" x="15" y="2"></rect> <rect height="1" width="1" x="12" y="5"></rect> <rect height="1" width="1" x="13" y="4"></rect> <polygon points="12.933 9 13 9 13 8 12.495 8 12.933 9"></polygon> <rect height="1" width="1" x="9" y="14"></rect> <rect height="1" width="1" x="8" y="15"></rect> <path d="M6,14.926V15H7V14.316A1.993,1.993,0,0,1,6,14.926Z"></path> <rect height="1" width="1" x="5" y="15"></rect> <path d="M10.668,13.8L10.317,13H10v1h0.792A1.947,1.947,0,0,1,10.668,13.8Z"></path> <rect height="1" width="1" x="11" y="15"></rect> <path d="M14.332,12.2a1.99,1.99,0,0,1,.166.8H15V12H14.245Z"></path> <rect height="1" width="1" x="14" y="15"></rect> <rect height="1" width="1" x="15" y="11"></rect> </g> <polyline class="ql-stroke" points="5.5 13 9 5 12.5 13"></polyline> <line class="ql-stroke" x1="11.63" x2="6.38" y1="11" y2="11"></line> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-3"><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#000000" style="background-color: rgb(0, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#e60000" style="background-color: rgb(230, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#ff9900" style="background-color: rgb(255, 153, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#ffff00" style="background-color: rgb(255, 255, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#008a00" style="background-color: rgb(0, 138, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#0066cc" style="background-color: rgb(0, 102, 204);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#9933ff" style="background-color: rgb(153, 51, 255);"></span><span tabindex="0" role="button" class="ql-picker-item ql-selected"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#facccc" style="background-color: rgb(250, 204, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffebcc" style="background-color: rgb(255, 235, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffffcc" style="background-color: rgb(255, 255, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#cce8cc" style="background-color: rgb(204, 232, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#cce0f5" style="background-color: rgb(204, 224, 245);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ebd6ff" style="background-color: rgb(235, 214, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#bbbbbb" style="background-color: rgb(187, 187, 187);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#f06666" style="background-color: rgb(240, 102, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffc266" style="background-color: rgb(255, 194, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffff66" style="background-color: rgb(255, 255, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#66b966" style="background-color: rgb(102, 185, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#66a3e0" style="background-color: rgb(102, 163, 224);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#c285ff" style="background-color: rgb(194, 133, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#888888" style="background-color: rgb(136, 136, 136);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#a10000" style="background-color: rgb(161, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#b26b00" style="background-color: rgb(178, 107, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#b2b200" style="background-color: rgb(178, 178, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#006100" style="background-color: rgb(0, 97, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#0047b2" style="background-color: rgb(0, 71, 178);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#6b24b2" style="background-color: rgb(107, 36, 178);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#444444" style="background-color: rgb(68, 68, 68);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#5c0000" style="background-color: rgb(92, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#663d00" style="background-color: rgb(102, 61, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#666600" style="background-color: rgb(102, 102, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#003700" style="background-color: rgb(0, 55, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#002966" style="background-color: rgb(0, 41, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#3d1466" style="background-color: rgb(61, 20, 102);"></span></span></span><select class="ql-background" style="display: none;"><option value="#000000"></option><option value="#e60000"></option><option value="#ff9900"></option><option value="#ffff00"></option><option value="#008a00"></option><option value="#0066cc"></option><option value="#9933ff"></option><option selected="selected"></option><option value="#facccc"></option><option value="#ffebcc"></option><option value="#ffffcc"></option><option value="#cce8cc"></option><option value="#cce0f5"></option><option value="#ebd6ff"></option><option value="#bbbbbb"></option><option value="#f06666"></option><option value="#ffc266"></option><option value="#ffff66"></option><option value="#66b966"></option><option value="#66a3e0"></option><option value="#c285ff"></option><option value="#888888"></option><option value="#a10000"></option><option value="#b26b00"></option><option value="#b2b200"></option><option value="#006100"></option><option value="#0047b2"></option><option value="#6b24b2"></option><option value="#444444"></option><option value="#5c0000"></option><option value="#663d00"></option><option value="#666600"></option><option value="#003700"></option><option value="#002966"></option><option value="#3d1466"></option></select></span><span class="ql-formats"><span class="ql-font ql-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-4"><svg viewBox="0 0 18 18"> <polygon class="ql-stroke" points="7 11 9 13 11 11 7 11"></polygon> <polygon class="ql-stroke" points="7 7 9 5 11 7 7 7"></polygon> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-4"><span tabindex="0" role="button" class="ql-picker-item ql-selected"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="serif"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="monospace"></span></span></span><select class="ql-font" style="display: none;"><option selected="selected"></option><option value="serif"></option><option value="monospace"></option></select></span><span class="ql-formats"><span class="ql-align ql-picker ql-icon-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-5"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="3" x2="15" y1="9" y2="9"></line> <line class="ql-stroke" x1="3" x2="13" y1="14" y2="14"></line> <line class="ql-stroke" x1="3" x2="9" y1="4" y2="4"></line> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-5"><span tabindex="0" role="button" class="ql-picker-item ql-selected"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="3" x2="15" y1="9" y2="9"></line> <line class="ql-stroke" x1="3" x2="13" y1="14" y2="14"></line> <line class="ql-stroke" x1="3" x2="9" y1="4" y2="4"></line> </svg></span><span tabindex="0" role="button" class="ql-picker-item" data-value="center"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="15" x2="3" y1="9" y2="9"></line> <line class="ql-stroke" x1="14" x2="4" y1="14" y2="14"></line> <line class="ql-stroke" x1="12" x2="6" y1="4" y2="4"></line> </svg></span><span tabindex="0" role="button" class="ql-picker-item" data-value="right"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="15" x2="3" y1="9" y2="9"></line> <line class="ql-stroke" x1="15" x2="5" y1="14" y2="14"></line> <line class="ql-stroke" x1="15" x2="9" y1="4" y2="4"></line> </svg></span><span tabindex="0" role="button" class="ql-picker-item" data-value="justify"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="15" x2="3" y1="9" y2="9"></line> <line class="ql-stroke" x1="15" x2="3" y1="14" y2="14"></line> <line class="ql-stroke" x1="15" x2="3" y1="4" y2="4"></line> </svg></span></span></span><select class="ql-align" style="display: none;"><option selected="selected"></option><option value="center"></option><option value="right"></option><option value="justify"></option></select></span><span class="ql-formats"><button type="button" class="ql-clean"><svg class="" viewBox="0 0 18 18"> <line class="ql-stroke" x1="5" x2="13" y1="3" y2="3"></line> <line class="ql-stroke" x1="6" x2="9.35" y1="12" y2="3"></line> <line class="ql-stroke" x1="11" x2="15" y1="11" y2="15"></line> <line class="ql-stroke" x1="15" x2="11" y1="11" y2="15"></line> <rect class="ql-fill" height="1" rx="0.5" ry="0.5" width="7" x="2" y="14"></rect> </svg></button></span></div><div class="ql-container ql-snow"><div class="ql-editor ql-blank "  data-gramm="false" contenteditable="true"><li><br></li></div><div class="ql-clipboard" contenteditable="true" tabindex="-1"></div><div class="ql-tooltip ql-hidden"><a class="ql-preview" rel="noopener noreferrer" target="_blank" href="about:blank"></a><input type="text" data-formula="e=mc^2" data-link="https://quilljs.com" data-video="Embed URL"><a class="ql-action"></a><a class="ql-remove"></a></div></div></div></div></div>
                                                    <script id="rendered-js" type="module">
                                                        import React from 'https://esm.sh/react@18.2.0';
                                                        import ReactDOM from 'https://esm.sh/react-dom@18.2.0';
                                                        import ReactQuill from "https://cdn.skypack.dev/react-quill@2.0.0";
                                                        const TextEditor = () => {
                                                            const [value, setValue] = React.useState('');
                                                            const customToolbarOptions = [
                                                                ['bold', 'italic', 'underline', 'strike'],
                                                                ['blockquote', 'code-block'],
                                                                [{ 'header': 1 }, { 'header': 2 }],
                                                                [{ 'list': 'ordered' }, { 'list': 'bullet' }],
                                                                [{ 'script': 'sub' }, { 'script': 'super' }],
                                                                [{ 'indent': '-1' }, { 'indent': '+1' }],
                                                                [{ 'direction': 'rtl' }],
                                                                [{ 'size': ['small', false, 'large', 'huge'] }],
                                                                [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
                                                                [{ 'color': [] }, { 'background': [] }],
                                                                [{ 'font': [] }],
                                                                [{ 'align': [] }],
                                                                ['clean'] // remove formatting button
                                                            ];
                                                            return React.createElement(ReactQuill, { theme: "snow", className: "text-editor", value: value, onChange: setValue, modules: { toolbar: customToolbarOptions } });
                                                        };
                                                        const App = () => {
                                                            return React.createElement("div", { className: "app" },
                                                                React.createElement(TextEditor, null));
                                                        };
                                                        ReactDOM.render(React.createElement(App, null), document.getElementById('root'));
                                                                                                                                        //# sourceURL=pen.js
                                                    </script>
                                                </div>


                                            </div>

                                            <div class="col-xl-4">
                                                <div class="input-box">
                                                    <div class="field moveindate">
                                                        <label for="MoveInDate"><b>Open Positions</b></label>
                                                        <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="OpenPositions" id="OpenPositions"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-4">
                                                <div class="input-box">
                                                    <div class="field moveindate">
                                                        <label for="MoveInDate"><b>Educational Qualification</b></label>
                                                        <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="EducationalQualification" id="EducationalQualification"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-4">
                                                <div class="input-box">
                                                    <div class="field moveindate">
                                                        <label for="MoveInDate"><b>Preferable Qualification</b></label>
                                                        <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text"  name="PreferableQualification" id="PreferableQualification"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-12">
                                                <div class="input-box">
                                                    <div class="field moveindate">
                                                        <label for="MoveInDate"><b>Skills Required</b></label>
                                                        <span class="wpcf7-form-control-wrap" data-name="textarea-845"><textarea cols="10" rows="5" class="wpcf7-form-control wpcf7-textarea wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" name="SkillsRequired" id="SkillsRequired"></textarea></span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xl-4">
                                                <div class="input-box">
                                                    <div class="field moveindate">
                                                        <label for="MoveInDate"><b>Work Experience:</b></label>
                                                        <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="WorkExperience" id="WorkExperience"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-4">
                                                <div class="input-box">
                                                    <div class="field moveindate">
                                                        <label for="MoveInDate"><b>Location</b></label>
                                                        <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="Location" id="Location"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-4">
                                                <div class="input-box">
                                                    <div class="field moveindate">
                                                        <label for="MoveInDate"><b>Posted on</b></label>
                                                        <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="Postedon" id="Postedon"></span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xl-12">
                                                <div class="button-box">
                                                    <p>
                                                        <button type="submit" class="custom-button-fill" onclick="addDataToTable()" ><span class="button-fill-text">Save</span></button>
                                                        
                                                    </p>
                                                </div>
                                            </div>


                                        </div>


                                    </div><div class="wpcf7-response-output" aria-hidden="true"></div>
                                </form>
                            </div>
                        </div>

                    </div>


                </div>
                <br />
                <br />
                 <div style=" overflow: auto;">
 <table id="mail-Data" class="table table-striped border-bottom" >
     <thead class="thead-dark">
     <tr><th>S.No</th><th>Title</th><th>Work Experience</th><th>Open Positions</th><th>Edit</th><th>Delete</th></tr>
         </thead>
     <tbody id="mailData">

     </tbody>
 </table>
     </div>
            </div>
        </section>

                             <!-- Modal for edit-->
     <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header">
                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                 </div>
                 <div class="modal-body" id="modal-body">
                    <div class="container">
    <div class="row">
        <div class="col-xl-12 col-lg-12">
            <div class="title" style=" padding-bottom: 20px;">
                <h4>Join us</h4>
            </div>
            <div class="contact-form">
                <div class="wpcf7 js" id="wpcf7-f560-p384-o1" lang="en-US" dir="ltr">
                    <div class="screen-reader-response"><p role="status" aria-live="polite" aria-atomic="true"></p> <ul></ul></div>
                    <form action="" method="post" class="wpcf7-form init" aria-label="Contact form" novalidate="novalidate" data-status="init">
                        <div style="display: none;">
                            <input type="hidden" name="_wpcf7" value="560">
                            <input type="hidden" name="_wpcf7_version" value="5.8.2">
                            <input type="hidden" name="_wpcf7_locale" value="en_US">
                            <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f560-p384-o1">
                            <input type="hidden" name="_wpcf7_container_post" value="384">
                            <input type="hidden" name="_wpcf7_posted_data_hash" value="">
                        </div>
                        <div class="default-form2">
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <div class="field moveindate">
                                            <label for="MoveInDate"><b>Job Title</b></label>
                                            <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="Titlemodel" id="Titlemodel"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <div class="field moveindate">
                                            <label for="MoveInDate"><b>Job Description</b></label>
                                            <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="JobDescriptionmodel" id="JobDescriptionmodel"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <label for="MoveInDate"><b>Poinst Wise</b></label>
                                        <div id="root1"><div class="app"><div class="quill text-editor"><div class="ql-toolbar ql-snow"><span class="ql-formats"><button type="button" class="ql-bold"><svg viewBox="0 0 18 18"> <path class="ql-stroke" d="M5,4H9.5A2.5,2.5,0,0,1,12,6.5v0A2.5,2.5,0,0,1,9.5,9H5A0,0,0,0,1,5,9V4A0,0,0,0,1,5,4Z"></path> <path class="ql-stroke" d="M5,9h5.5A2.5,2.5,0,0,1,13,11.5v0A2.5,2.5,0,0,1,10.5,14H5a0,0,0,0,1,0,0V9A0,0,0,0,1,5,9Z"></path> </svg></button><button type="button" class="ql-italic"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="13" y1="4" y2="4"></line> <line class="ql-stroke" x1="5" x2="11" y1="14" y2="14"></line> <line class="ql-stroke" x1="8" x2="10" y1="14" y2="4"></line> </svg></button><button type="button" class="ql-underline"><svg viewBox="0 0 18 18"> <path class="ql-stroke" d="M5,3V9a4.012,4.012,0,0,0,4,4H9a4.012,4.012,0,0,0,4-4V3"></path> <rect class="ql-fill" height="1" rx="0.5" ry="0.5" width="12" x="3" y="15"></rect> </svg></button><button type="button" class="ql-strike"><svg viewBox="0 0 18 18"> <line class="ql-stroke ql-thin" x1="15.5" x2="2.5" y1="8.5" y2="9.5"></line> <path class="ql-fill" d="M9.007,8C6.542,7.791,6,7.519,6,6.5,6,5.792,7.283,5,9,5c1.571,0,2.765.679,2.969,1.309a1,1,0,0,0,1.9-.617C13.356,4.106,11.354,3,9,3,6.2,3,4,4.538,4,6.5a3.2,3.2,0,0,0,.5,1.843Z"></path> <path class="ql-fill" d="M8.984,10C11.457,10.208,12,10.479,12,11.5c0,0.708-1.283,1.5-3,1.5-1.571,0-2.765-.679-2.969-1.309a1,1,0,1,0-1.9.617C4.644,13.894,6.646,15,9,15c2.8,0,5-1.538,5-3.5a3.2,3.2,0,0,0-.5-1.843Z"></path> </svg></button></span><span class="ql-formats"><button type="button" class="ql-blockquote"><svg viewBox="0 0 18 18"> <rect class="ql-fill ql-stroke" height="3" width="3" x="4" y="5"></rect> <rect class="ql-fill ql-stroke" height="3" width="3" x="11" y="5"></rect> <path class="ql-even ql-fill ql-stroke" d="M7,8c0,4.031-3,5-3,5"></path> <path class="ql-even ql-fill ql-stroke" d="M14,8c0,4.031-3,5-3,5"></path> </svg></button><button type="button" class="ql-code-block"><svg viewBox="0 0 18 18"> <polyline class="ql-even ql-stroke" points="5 7 3 9 5 11"></polyline> <polyline class="ql-even ql-stroke" points="13 7 15 9 13 11"></polyline> <line class="ql-stroke" x1="10" x2="8" y1="5" y2="13"></line> </svg></button></span><span class="ql-formats"><button type="button" class="ql-header" value="1"><svg viewBox="0 0 18 18"> <path class="ql-fill" d="M10,4V14a1,1,0,0,1-2,0V10H3v4a1,1,0,0,1-2,0V4A1,1,0,0,1,3,4V8H8V4a1,1,0,0,1,2,0Zm6.06787,9.209H14.98975V7.59863a.54085.54085,0,0,0-.605-.60547h-.62744a1.01119,1.01119,0,0,0-.748.29688L11.645,8.56641a.5435.5435,0,0,0-.022.8584l.28613.30762a.53861.53861,0,0,0,.84717.0332l.09912-.08789a1.2137,1.2137,0,0,0,.2417-.35254h.02246s-.01123.30859-.01123.60547V13.209H12.041a.54085.54085,0,0,0-.605.60547v.43945a.54085.54085,0,0,0,.605.60547h4.02686a.54085.54085,0,0,0,.605-.60547v-.43945A.54085.54085,0,0,0,16.06787,13.209Z"></path> </svg></button><button type="button" class="ql-header" value="2"><svg viewBox="0 0 18 18"> <path class="ql-fill" d="M16.73975,13.81445v.43945a.54085.54085,0,0,1-.605.60547H11.855a.58392.58392,0,0,1-.64893-.60547V14.0127c0-2.90527,3.39941-3.42187,3.39941-4.55469a.77675.77675,0,0,0-.84717-.78125,1.17684,1.17684,0,0,0-.83594.38477c-.2749.26367-.561.374-.85791.13184l-.4292-.34082c-.30811-.24219-.38525-.51758-.1543-.81445a2.97155,2.97155,0,0,1,2.45361-1.17676,2.45393,2.45393,0,0,1,2.68408,2.40918c0,2.45312-3.1792,2.92676-3.27832,3.93848h2.79443A.54085.54085,0,0,1,16.73975,13.81445ZM9,3A.99974.99974,0,0,0,8,4V8H3V4A1,1,0,0,0,1,4V14a1,1,0,0,0,2,0V10H8v4a1,1,0,0,0,2,0V4A.99974.99974,0,0,0,9,3Z"></path> </svg></button></span><span class="ql-formats"><button type="button" class="ql-list" value="ordered"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="15" y1="4" y2="4"></line> <line class="ql-stroke" x1="7" x2="15" y1="9" y2="9"></line> <line class="ql-stroke" x1="7" x2="15" y1="14" y2="14"></line> <line class="ql-stroke ql-thin" x1="2.5" x2="4.5" y1="5.5" y2="5.5"></line> <path class="ql-fill" d="M3.5,6A0.5,0.5,0,0,1,3,5.5V3.085l-0.276.138A0.5,0.5,0,0,1,2.053,3c-0.124-.247-0.023-0.324.224-0.447l1-.5A0.5,0.5,0,0,1,4,2.5v3A0.5,0.5,0,0,1,3.5,6Z"></path> <path class="ql-stroke ql-thin" d="M4.5,10.5h-2c0-.234,1.85-1.076,1.85-2.234A0.959,0.959,0,0,0,2.5,8.156"></path> <path class="ql-stroke ql-thin" d="M2.5,14.846a0.959,0.959,0,0,0,1.85-.109A0.7,0.7,0,0,0,3.75,14a0.688,0.688,0,0,0,.6-0.736,0.959,0.959,0,0,0-1.85-.109"></path> </svg></button><button type="button" class="ql-list" value="bullet"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="6" x2="15" y1="4" y2="4"></line> <line class="ql-stroke" x1="6" x2="15" y1="9" y2="9"></line> <line class="ql-stroke" x1="6" x2="15" y1="14" y2="14"></line> <line class="ql-stroke" x1="3" x2="3" y1="4" y2="4"></line> <line class="ql-stroke" x1="3" x2="3" y1="9" y2="9"></line> <line class="ql-stroke" x1="3" x2="3" y1="14" y2="14"></line> </svg></button></span><span class="ql-formats"><button type="button" class="ql-script" value="sub"><svg viewBox="0 0 18 18"> <path class="ql-fill" d="M15.5,15H13.861a3.858,3.858,0,0,0,1.914-2.975,1.8,1.8,0,0,0-1.6-1.751A1.921,1.921,0,0,0,12.021,11.7a0.50013,0.50013,0,1,0,.957.291h0a0.914,0.914,0,0,1,1.053-.725,0.81,0.81,0,0,1,.744.762c0,1.076-1.16971,1.86982-1.93971,2.43082A1.45639,1.45639,0,0,0,12,15.5a0.5,0.5,0,0,0,.5.5h3A0.5,0.5,0,0,0,15.5,15Z"></path> <path class="ql-fill" d="M9.65,5.241a1,1,0,0,0-1.409.108L6,7.964,3.759,5.349A1,1,0,0,0,2.192,6.59178Q2.21541,6.6213,2.241,6.649L4.684,9.5,2.241,12.35A1,1,0,0,0,3.71,13.70722q0.02557-.02768.049-0.05722L6,11.036,8.241,13.65a1,1,0,1,0,1.567-1.24277Q9.78459,12.3777,9.759,12.35L7.316,9.5,9.759,6.651A1,1,0,0,0,9.65,5.241Z"></path> </svg></button><button type="button" class="ql-script" value="super"><svg viewBox="0 0 18 18"> <path class="ql-fill" d="M15.5,7H13.861a4.015,4.015,0,0,0,1.914-2.975,1.8,1.8,0,0,0-1.6-1.751A1.922,1.922,0,0,0,12.021,3.7a0.5,0.5,0,1,0,.957.291,0.917,0.917,0,0,1,1.053-.725,0.81,0.81,0,0,1,.744.762c0,1.077-1.164,1.925-1.934,2.486A1.423,1.423,0,0,0,12,7.5a0.5,0.5,0,0,0,.5.5h3A0.5,0.5,0,0,0,15.5,7Z"></path> <path class="ql-fill" d="M9.651,5.241a1,1,0,0,0-1.41.108L6,7.964,3.759,5.349a1,1,0,1,0-1.519,1.3L4.683,9.5,2.241,12.35a1,1,0,1,0,1.519,1.3L6,11.036,8.241,13.65a1,1,0,0,0,1.519-1.3L7.317,9.5,9.759,6.651A1,1,0,0,0,9.651,5.241Z"></path> </svg></button></span><span class="ql-formats"><button type="button" class="ql-indent" value="-1"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="3" x2="15" y1="14" y2="14"></line> <line class="ql-stroke" x1="3" x2="15" y1="4" y2="4"></line> <line class="ql-stroke" x1="9" x2="15" y1="9" y2="9"></line> <polyline class="ql-stroke" points="5 7 5 11 3 9 5 7"></polyline> </svg></button><button type="button" class="ql-indent" value="+1"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="3" x2="15" y1="14" y2="14"></line> <line class="ql-stroke" x1="3" x2="15" y1="4" y2="4"></line> <line class="ql-stroke" x1="9" x2="15" y1="9" y2="9"></line> <polyline class="ql-fill ql-stroke" points="3 7 3 11 5 9 3 7"></polyline> </svg></button></span><span class="ql-formats"><button type="button" class="ql-direction" value="rtl"><svg viewBox="0 0 18 18"> <polygon class="ql-stroke ql-fill" points="3 11 5 9 3 7 3 11"></polygon> <line class="ql-stroke ql-fill" x1="15" x2="11" y1="4" y2="4"></line> <path class="ql-fill" d="M11,3a3,3,0,0,0,0,6h1V3H11Z"></path> <rect class="ql-fill" height="11" width="1" x="11" y="4"></rect> <rect class="ql-fill" height="11" width="1" x="13" y="4"></rect> </svg><svg viewBox="0 0 18 18"> <polygon class="ql-stroke ql-fill" points="15 12 13 10 15 8 15 12"></polygon> <line class="ql-stroke ql-fill" x1="9" x2="5" y1="4" y2="4"></line> <path class="ql-fill" d="M5,3A3,3,0,0,0,5,9H6V3H5Z"></path> <rect class="ql-fill" height="11" width="1" x="5" y="4"></rect> <rect class="ql-fill" height="11" width="1" x="7" y="4"></rect> </svg></button></span><span class="ql-formats"><span class="ql-size ql-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-0"><svg viewBox="0 0 18 18"> <polygon class="ql-stroke" points="7 11 9 13 11 11 7 11"></polygon> <polygon class="ql-stroke" points="7 7 9 5 11 7 7 7"></polygon> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-0"><span tabindex="0" role="button" class="ql-picker-item" data-value="small"></span><span tabindex="0" role="button" class="ql-picker-item ql-selected"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="large"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="huge"></span></span></span><select class="ql-size" style="display: none;"><option value="small"></option><option selected="selected"></option><option value="large"></option><option value="huge"></option></select></span><span class="ql-formats"><span class="ql-header ql-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-1"><svg viewBox="0 0 18 18"> <polygon class="ql-stroke" points="7 11 9 13 11 11 7 11"></polygon> <polygon class="ql-stroke" points="7 7 9 5 11 7 7 7"></polygon> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-1"><span tabindex="0" role="button" class="ql-picker-item" data-value="1"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="2"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="3"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="4"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="5"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="6"></span><span tabindex="0" role="button" class="ql-picker-item ql-selected"></span></span></span><select class="ql-header" style="display: none;"><option value="1"></option><option value="2"></option><option value="3"></option><option value="4"></option><option value="5"></option><option value="6"></option><option selected="selected"></option></select></span><span class="ql-formats"><span class="ql-color ql-picker ql-color-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-2"><svg viewBox="0 0 18 18"> <line class="ql-color-label ql-stroke ql-transparent" x1="3" x2="15" y1="15" y2="15"></line> <polyline class="ql-stroke" points="5.5 11 9 3 12.5 11"></polyline> <line class="ql-stroke" x1="11.63" x2="6.38" y1="9" y2="9"></line> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-2"><span tabindex="0" role="button" class="ql-picker-item ql-selected ql-primary"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#e60000" style="background-color: rgb(230, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#ff9900" style="background-color: rgb(255, 153, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#ffff00" style="background-color: rgb(255, 255, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#008a00" style="background-color: rgb(0, 138, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#0066cc" style="background-color: rgb(0, 102, 204);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#9933ff" style="background-color: rgb(153, 51, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffffff" style="background-color: rgb(255, 255, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#facccc" style="background-color: rgb(250, 204, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffebcc" style="background-color: rgb(255, 235, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffffcc" style="background-color: rgb(255, 255, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#cce8cc" style="background-color: rgb(204, 232, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#cce0f5" style="background-color: rgb(204, 224, 245);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ebd6ff" style="background-color: rgb(235, 214, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#bbbbbb" style="background-color: rgb(187, 187, 187);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#f06666" style="background-color: rgb(240, 102, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffc266" style="background-color: rgb(255, 194, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffff66" style="background-color: rgb(255, 255, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#66b966" style="background-color: rgb(102, 185, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#66a3e0" style="background-color: rgb(102, 163, 224);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#c285ff" style="background-color: rgb(194, 133, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#888888" style="background-color: rgb(136, 136, 136);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#a10000" style="background-color: rgb(161, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#b26b00" style="background-color: rgb(178, 107, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#b2b200" style="background-color: rgb(178, 178, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#006100" style="background-color: rgb(0, 97, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#0047b2" style="background-color: rgb(0, 71, 178);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#6b24b2" style="background-color: rgb(107, 36, 178);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#444444" style="background-color: rgb(68, 68, 68);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#5c0000" style="background-color: rgb(92, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#663d00" style="background-color: rgb(102, 61, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#666600" style="background-color: rgb(102, 102, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#003700" style="background-color: rgb(0, 55, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#002966" style="background-color: rgb(0, 41, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#3d1466" style="background-color: rgb(61, 20, 102);"></span></span></span><select class="ql-color" style="display: none;"><option selected="selected"></option><option value="#e60000"></option><option value="#ff9900"></option><option value="#ffff00"></option><option value="#008a00"></option><option value="#0066cc"></option><option value="#9933ff"></option><option value="#ffffff"></option><option value="#facccc"></option><option value="#ffebcc"></option><option value="#ffffcc"></option><option value="#cce8cc"></option><option value="#cce0f5"></option><option value="#ebd6ff"></option><option value="#bbbbbb"></option><option value="#f06666"></option><option value="#ffc266"></option><option value="#ffff66"></option><option value="#66b966"></option><option value="#66a3e0"></option><option value="#c285ff"></option><option value="#888888"></option><option value="#a10000"></option><option value="#b26b00"></option><option value="#b2b200"></option><option value="#006100"></option><option value="#0047b2"></option><option value="#6b24b2"></option><option value="#444444"></option><option value="#5c0000"></option><option value="#663d00"></option><option value="#666600"></option><option value="#003700"></option><option value="#002966"></option><option value="#3d1466"></option></select><span class="ql-background ql-picker ql-color-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-3"><svg viewBox="0 0 18 18"> <g class="ql-fill ql-color-label"> <polygon points="6 6.868 6 6 5 6 5 7 5.942 7 6 6.868"></polygon> <rect height="1" width="1" x="4" y="4"></rect> <polygon points="6.817 5 6 5 6 6 6.38 6 6.817 5"></polygon> <rect height="1" width="1" x="2" y="6"></rect> <rect height="1" width="1" x="3" y="5"></rect> <rect height="1" width="1" x="4" y="7"></rect> <polygon points="4 11.439 4 11 3 11 3 12 3.755 12 4 11.439"></polygon> <rect height="1" width="1" x="2" y="12"></rect> <rect height="1" width="1" x="2" y="9"></rect> <rect height="1" width="1" x="2" y="15"></rect> <polygon points="4.63 10 4 10 4 11 4.192 11 4.63 10"></polygon> <rect height="1" width="1" x="3" y="8"></rect> <path d="M10.832,4.2L11,4.582V4H10.708A1.948,1.948,0,0,1,10.832,4.2Z"></path> <path d="M7,4.582L7.168,4.2A1.929,1.929,0,0,1,7.292,4H7V4.582Z"></path> <path d="M8,13H7.683l-0.351.8a1.933,1.933,0,0,1-.124.2H8V13Z"></path> <rect height="1" width="1" x="12" y="2"></rect> <rect height="1" width="1" x="11" y="3"></rect> <path d="M9,3H8V3.282A1.985,1.985,0,0,1,9,3Z"></path> <rect height="1" width="1" x="2" y="3"></rect> <rect height="1" width="1" x="6" y="2"></rect> <rect height="1" width="1" x="3" y="2"></rect> <rect height="1" width="1" x="5" y="3"></rect> <rect height="1" width="1" x="9" y="2"></rect> <rect height="1" width="1" x="15" y="14"></rect> <polygon points="13.447 10.174 13.469 10.225 13.472 10.232 13.808 11 14 11 14 10 13.37 10 13.447 10.174"></polygon> <rect height="1" width="1" x="13" y="7"></rect> <rect height="1" width="1" x="15" y="5"></rect> <rect height="1" width="1" x="14" y="6"></rect> <rect height="1" width="1" x="15" y="8"></rect> <rect height="1" width="1" x="14" y="9"></rect> <path d="M3.775,14H3v1H4V14.314A1.97,1.97,0,0,1,3.775,14Z"></path> <rect height="1" width="1" x="14" y="3"></rect> <polygon points="12 6.868 12 6 11.62 6 12 6.868"></polygon> <rect height="1" width="1" x="15" y="2"></rect> <rect height="1" width="1" x="12" y="5"></rect> <rect height="1" width="1" x="13" y="4"></rect> <polygon points="12.933 9 13 9 13 8 12.495 8 12.933 9"></polygon> <rect height="1" width="1" x="9" y="14"></rect> <rect height="1" width="1" x="8" y="15"></rect> <path d="M6,14.926V15H7V14.316A1.993,1.993,0,0,1,6,14.926Z"></path> <rect height="1" width="1" x="5" y="15"></rect> <path d="M10.668,13.8L10.317,13H10v1h0.792A1.947,1.947,0,0,1,10.668,13.8Z"></path> <rect height="1" width="1" x="11" y="15"></rect> <path d="M14.332,12.2a1.99,1.99,0,0,1,.166.8H15V12H14.245Z"></path> <rect height="1" width="1" x="14" y="15"></rect> <rect height="1" width="1" x="15" y="11"></rect> </g> <polyline class="ql-stroke" points="5.5 13 9 5 12.5 13"></polyline> <line class="ql-stroke" x1="11.63" x2="6.38" y1="11" y2="11"></line> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-3"><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#000000" style="background-color: rgb(0, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#e60000" style="background-color: rgb(230, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#ff9900" style="background-color: rgb(255, 153, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#ffff00" style="background-color: rgb(255, 255, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#008a00" style="background-color: rgb(0, 138, 0);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#0066cc" style="background-color: rgb(0, 102, 204);"></span><span tabindex="0" role="button" class="ql-picker-item ql-primary" data-value="#9933ff" style="background-color: rgb(153, 51, 255);"></span><span tabindex="0" role="button" class="ql-picker-item ql-selected"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#facccc" style="background-color: rgb(250, 204, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffebcc" style="background-color: rgb(255, 235, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffffcc" style="background-color: rgb(255, 255, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#cce8cc" style="background-color: rgb(204, 232, 204);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#cce0f5" style="background-color: rgb(204, 224, 245);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ebd6ff" style="background-color: rgb(235, 214, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#bbbbbb" style="background-color: rgb(187, 187, 187);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#f06666" style="background-color: rgb(240, 102, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffc266" style="background-color: rgb(255, 194, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#ffff66" style="background-color: rgb(255, 255, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#66b966" style="background-color: rgb(102, 185, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#66a3e0" style="background-color: rgb(102, 163, 224);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#c285ff" style="background-color: rgb(194, 133, 255);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#888888" style="background-color: rgb(136, 136, 136);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#a10000" style="background-color: rgb(161, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#b26b00" style="background-color: rgb(178, 107, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#b2b200" style="background-color: rgb(178, 178, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#006100" style="background-color: rgb(0, 97, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#0047b2" style="background-color: rgb(0, 71, 178);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#6b24b2" style="background-color: rgb(107, 36, 178);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#444444" style="background-color: rgb(68, 68, 68);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#5c0000" style="background-color: rgb(92, 0, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#663d00" style="background-color: rgb(102, 61, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#666600" style="background-color: rgb(102, 102, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#003700" style="background-color: rgb(0, 55, 0);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#002966" style="background-color: rgb(0, 41, 102);"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="#3d1466" style="background-color: rgb(61, 20, 102);"></span></span></span><select class="ql-background" style="display: none;"><option value="#000000"></option><option value="#e60000"></option><option value="#ff9900"></option><option value="#ffff00"></option><option value="#008a00"></option><option value="#0066cc"></option><option value="#9933ff"></option><option selected="selected"></option><option value="#facccc"></option><option value="#ffebcc"></option><option value="#ffffcc"></option><option value="#cce8cc"></option><option value="#cce0f5"></option><option value="#ebd6ff"></option><option value="#bbbbbb"></option><option value="#f06666"></option><option value="#ffc266"></option><option value="#ffff66"></option><option value="#66b966"></option><option value="#66a3e0"></option><option value="#c285ff"></option><option value="#888888"></option><option value="#a10000"></option><option value="#b26b00"></option><option value="#b2b200"></option><option value="#006100"></option><option value="#0047b2"></option><option value="#6b24b2"></option><option value="#444444"></option><option value="#5c0000"></option><option value="#663d00"></option><option value="#666600"></option><option value="#003700"></option><option value="#002966"></option><option value="#3d1466"></option></select></span><span class="ql-formats"><span class="ql-font ql-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-4"><svg viewBox="0 0 18 18"> <polygon class="ql-stroke" points="7 11 9 13 11 11 7 11"></polygon> <polygon class="ql-stroke" points="7 7 9 5 11 7 7 7"></polygon> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-4"><span tabindex="0" role="button" class="ql-picker-item ql-selected"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="serif"></span><span tabindex="0" role="button" class="ql-picker-item" data-value="monospace"></span></span></span><select class="ql-font" style="display: none;"><option selected="selected"></option><option value="serif"></option><option value="monospace"></option></select></span><span class="ql-formats"><span class="ql-align ql-picker ql-icon-picker"><span class="ql-picker-label" tabindex="0" role="button" aria-expanded="false" aria-controls="ql-picker-options-5"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="3" x2="15" y1="9" y2="9"></line> <line class="ql-stroke" x1="3" x2="13" y1="14" y2="14"></line> <line class="ql-stroke" x1="3" x2="9" y1="4" y2="4"></line> </svg></span><span class="ql-picker-options" aria-hidden="true" tabindex="-1" id="ql-picker-options-5"><span tabindex="0" role="button" class="ql-picker-item ql-selected"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="3" x2="15" y1="9" y2="9"></line> <line class="ql-stroke" x1="3" x2="13" y1="14" y2="14"></line> <line class="ql-stroke" x1="3" x2="9" y1="4" y2="4"></line> </svg></span><span tabindex="0" role="button" class="ql-picker-item" data-value="center"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="15" x2="3" y1="9" y2="9"></line> <line class="ql-stroke" x1="14" x2="4" y1="14" y2="14"></line> <line class="ql-stroke" x1="12" x2="6" y1="4" y2="4"></line> </svg></span><span tabindex="0" role="button" class="ql-picker-item" data-value="right"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="15" x2="3" y1="9" y2="9"></line> <line class="ql-stroke" x1="15" x2="5" y1="14" y2="14"></line> <line class="ql-stroke" x1="15" x2="9" y1="4" y2="4"></line> </svg></span><span tabindex="0" role="button" class="ql-picker-item" data-value="justify"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="15" x2="3" y1="9" y2="9"></line> <line class="ql-stroke" x1="15" x2="3" y1="14" y2="14"></line> <line class="ql-stroke" x1="15" x2="3" y1="4" y2="4"></line> </svg></span></span></span><select class="ql-align" style="display: none;"><option selected="selected"></option><option value="center"></option><option value="right"></option><option value="justify"></option></select></span><span class="ql-formats"><button type="button" class="ql-clean"><svg class="" viewBox="0 0 18 18"> <line class="ql-stroke" x1="5" x2="13" y1="3" y2="3"></line> <line class="ql-stroke" x1="6" x2="9.35" y1="12" y2="3"></line> <line class="ql-stroke" x1="11" x2="15" y1="11" y2="15"></line> <line class="ql-stroke" x1="15" x2="11" y1="11" y2="15"></line> <rect class="ql-fill" height="1" rx="0.5" ry="0.5" width="7" x="2" y="14"></rect> </svg></button></span></div><div class="ql-container ql-snow"><div class="ql-editor ql-blank "  data-gramm="false" contenteditable="true"><li><br></li></div><div class="ql-clipboard" contenteditable="true" tabindex="-1"></div><div class="ql-tooltip ql-hidden"><a class="ql-preview" rel="noopener noreferrer" target="_blank" href="about:blank"></a><input type="text" data-formula="e=mc^2" data-link="https://quilljs.com" data-video="Embed URL"><a class="ql-action"></a><a class="ql-remove"></a></div></div></div></div></div>
                                        <script id="rendered-js1" type="module">
                                            import React from 'https://esm.sh/react@18.2.0';
                                            import ReactDOM from 'https://esm.sh/react-dom@18.2.0';
                                            import ReactQuill from "https://cdn.skypack.dev/react-quill@2.0.0";
                                            const TextEditor = () => {
                                                const [value, setValue] = React.useState('');
                                                const customToolbarOptions = [
                                                    ['bold', 'italic', 'underline', 'strike'],
                                                    ['blockquote', 'code-block'],
                                                    [{ 'header': 1 }, { 'header': 2 }],
                                                    [{ 'list': 'ordered' }, { 'list': 'bullet' }],
                                                    [{ 'script': 'sub' }, { 'script': 'super' }],
                                                    [{ 'indent': '-1' }, { 'indent': '+1' }],
                                                    [{ 'direction': 'rtl' }],
                                                    [{ 'size': ['small', false, 'large', 'huge'] }],
                                                    [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
                                                    [{ 'color': [] }, { 'background': [] }],
                                                    [{ 'font': [] }],
                                                    [{ 'align': [] }],
                                                    ['clean'] // remove formatting button
                                                ];
                                                return React.createElement(ReactQuill, { theme: "snow", className: "text-editor", value: value, onChange: setValue, modules: { toolbar: customToolbarOptions } });
                                            };
                                            const App = () => {
                                                return React.createElement("div", { className: "app" },
                                                    React.createElement(TextEditor, null));
                                            };
                                            ReactDOM.render(React.createElement(App, null), document.getElementById('root'));
                                            //# sourceURL=pen.js
                                        </script>
                                    </div>


                                </div>

                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <div class="field moveindate">
                                            <label for="MoveInDate"><b>Open Positions</b></label>
                                            <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="OpenPositionsmodel" id="OpenPositionsmodel"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <div class="field moveindate">
                                             <label for="MoveInDate"><b>Educational Qualification</b></label>
                                            <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="EducationalQualificationmodel" id="EducationalQualificationmodel"></span>
                                            </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <div class="field moveindate">
                                            <label for="MoveInDate"><b>Preferable Qualification</b></label>
                                            <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text"  name="PreferableQualificationmodel" id="PreferableQualificationmodel"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <div class="field moveindate">
                                            <label for="MoveInDate"><b>Skills Required</b></label>
                                            <span class="wpcf7-form-control-wrap" data-name="textarea-845"><textarea cols="10" rows="5" class="wpcf7-form-control wpcf7-textarea wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" name="SkillsRequiredmodel" id="SkillsRequiredmodel"></textarea></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <div class="field moveindate">
                                            <label for="MoveInDate"><b>Work Experience:</b></label>
                                            <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="WorkExperiencemodel" id="WorkExperiencemodel"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <div class="field moveindate">
                                            <label for="MoveInDate"><b>Location</b></label>
                                            <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="Locationmodel" id="Locationmodel"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <div class="field moveindate">
                                            <label for="MoveInDate"><b>Posted on</b></label>
                                            <span class="wpcf7-form-control-wrap" data-name="text-109"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="" value="" type="text" name="Postedonmodel" id="Postedonmodel"></span>
                                        </div>
                                    </div>
                                </div>

                               


                            </div>


                        </div><div class="wpcf7-response-output" aria-hidden="true"></div>
                    </form>
                </div>
            </div>

        </div>


    </div>

</div>
                 </div>
                 <div class="modal-footer">
                     <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="toreload()">Close</button>
                     <button type="button" class="btn btn-primary" id="saveData" data-bs-dismiss="modal">Save changes</button>
                 </div>
             </div>
         </div>
     </div>


     <!-- Modal for delete-->
     <div class="modal fade" id="exampleModaldelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header">

                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                 </div>
                 <div class="modal-body">
                     Are you sure this record will get deleted...!
                 </div>
                 <div class="modal-footer">
                     <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                     <button type="button" class="btn btn-primary" id="deleteData" data-bs-dismiss="modal">Yes</button>
                 </div>
             </div>
         </div>
     </div>
        <section class="personal-info-wrap2">
            <div class="figure-img1">
                <img src="../img/figure5.png" alt="figure" width="872" height="724">
            </div>
            <div class="figure-img2">
                <img src="../img/figure6.png" alt="figure" width="487" height="269">
            </div>

            <div class="figure-img2">
                <img src="../img/figure6.png" alt="figure" width="487" height="269">
            </div>
        </section>
        <!--=====================================-->
        <!--=      Footer Start                 =-->
        <!--=====================================-->
        <footer class="footer-area2">
            <div class="background-shape68">
                <img src="../img/figure68.png" alt="figure" width="1920" height="267">
            </div>
            <div class="background-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6">
                            <div class="footer-left">
                                <div class="footer-logo">
                                    <a href="index.html"><img src="../img/logo-name.jpg" alt="logo" width="350"></a>
                                </div>
                                <p>Established in 1979, Kakatiya Cement Sugar & Industries Limited (KCSIL), formerly known as Kakatiya Cements Limited (KCL), was founded with the vision of producing Ordinary Portland Cement. </p>

                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6">
                            <div class="footer-middle">
                                <h2 class="footer-title">Quick Links</h2>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <ul class="footer-list">
                                            <li><a href="profile.html"><i class="fas fa-angle-right"></i>Profile</a></li>
                                            <li><a href="cement.html"><i class="fas fa-angle-right"></i>Cement</a></li>
                                            <li><a href="sugar.html"><i class="fas fa-angle-right"></i>Sugar</a></li>
                                            <li><a href="power.html"><i class="fas fa-angle-right"></i>Power</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6">
                                        <ul class="footer-list2">
                                            <li><a href="disclosure-under-regulations-sebi.html"><i class="fas fa-angle-right"></i>Investors</a></li>
                                            <li><a href="https://smartodr.in/login" target="_blank"><i class="fas fa-angle-right"></i>Smart ODR</a></li>
                                            <li><a href="careers.html"><i class="fas fa-angle-right"></i>Careers</a></li>
                                            <li><a href="login.aspx"><i class="fas fa-angle-right"></i>Login</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6">
                            <div class="footer-right">
                                <h2 class="footer-title">Regd Office</h2>

                                <div class="topbar-right2">
                                    <ul style="display: inline;">
                                        <li style="padding-bottom: 20px;">
                                            <div class="media" style="align-items: normal; -webkit-align-items: normal;">
                                                <div class="item-icon">
                                                    <i class="fas fa-map-marker-alt" style="font-size: 20px;"></i>
                                                </div>
                                                <div class="media-body" style="margin-left: 12px; ">
                                                    <div class="item-number" style="font-size: 14px; font-weight: 500;">
                                                        1-10-140/1, GURUKRUPA, Ashok Nagar, Himayatnagar, Hyderabad, Telangana - 500 020
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li style="padding-bottom: 20px;">
                                            <div class="media" style="align-items: normal; -webkit-align-items: normal;">
                                                <div class="item-icon">
                                                    <i class="fas fa-phone-alt" style="font-size: 20px;"></i>
                                                </div>
                                                <div class="media-body" style="margin-left: 12px; ">
                                                    <div class="item-number" style="font-size: 14px; font-weight: 500;">
                                                        +91 40-2763 7717, 2763 3627, 2763 7813
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li style="padding-bottom: 20px;">
                                            <div class="media" style="align-items: normal; -webkit-align-items: normal;">
                                                <div class="item-icon">
                                                    <i class="far fa-envelope" style="font-size: 20px;"></i>
                                                </div>
                                                <div class="media-body" style="margin-left: 12px; ">
                                                    <div class="item-number" style="font-size: 14px; font-weight: 500;">
                                                        sales@kakatiyacements.com
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer-bottom">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-12">
                                    <div class="copyright-area">
                                        <p> © 2024 Kakatiya Cement Sugar Industries Ltd. All rights reserved. </p>
                                        <div class="copyright-img1">
                                            <img src="../img/figure/figure4.png" alt="figure" width="20" height="20">
                                        </div>
                                        <div class="copyright-img2">
                                            <img src="../img/figure/figure4.png" alt="figure" width="20" height="20">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--=====================================-->
        <!--=            Offcanvas Start        =-->
        <!--=====================================-->
        <div class="offcanvas-menu-wrap" id="offcanvas-wrap" data-position="right">
            <div class="close-btn offcanvas-close"><i class="fas fa-times"></i></div>
            <div class="offcanvas-content" style="align-items: normal; padding-left:30px; padding-right:30px">
                <div class="offcanvas-logo">
                    <a href="index.html"><img src="../img/logo1.jpg" alt="Logo"></a>
                </div>
                <br />
                <div class="about-box4">
                    <!--<p class="heading-subtitle">About Kakatiya Cement Sugar &amp; Industries Ltd.</p>-->
                    <p>Established in 1979, Kakatiya Cement Sugar & Industries Limited (KCSIL), formerly known as Kakatiya Cements Limited (KCL), was founded with the vision of producing Ordinary Portland Cement. </p>
                    <h5><b>Find Us</b></h5>
                    <div class="topbar-right2">
                        <ul style="display: inline;">
                            <li style="padding-bottom: 20px;">
                                <div class="media" style="align-items: normal; -webkit-align-items: normal;">
                                    <div class="item-icon">
                                        <i class="fas fa-map-marker-alt" style="font-size: 20px;"></i>
                                    </div>
                                    <div class="media-body" style="margin-left: 12px; ">
                                        <div class="item-number" style="font-size: 14px; font-weight: 500;">
                                            1-10-140/1, GURUKRUPA, Ashok Nagar, Himayatnagar, Hyderabad, Telangana - 500 020
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li style="padding-bottom: 20px;">
                                <div class="media" style="align-items: normal; -webkit-align-items: normal;">
                                    <div class="item-icon">
                                        <i class="fas fa-phone-alt" style="font-size: 20px;"></i>
                                    </div>
                                    <div class="media-body" style="margin-left: 12px; ">
                                        <div class="item-number" style="font-size: 14px; font-weight: 500;">
                                            +91 40-2763 7717, 2763 3627, 2763 7813
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li style="padding-bottom: 20px;">
                                <div class="media" style="align-items: normal; -webkit-align-items: normal;">
                                    <div class="item-icon">
                                        <i class="far fa-envelope" style="font-size: 20px;"></i>
                                    </div>
                                    <div class="media-body" style="margin-left: 12px; ">
                                        <div class="item-number" style="font-size: 14px; font-weight: 500;">
                                            sales@kakatiyacements.com
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <br />
                <!--<ul class="offcanvas-menu">
                    <li class="nav-item">
                        <a href="">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a href="">Board of Directors</a>
                    </li>
                    <li class="nav-item">
                        <a href="">Corporate Info</a>
                    </li>
                    <li class="nav-item">
                        <a href="">Cement</a>
                    </li>
                    <li class="nav-item">
                        <a href="">Sugar</a>
                    </li>
                    <li class="nav-item">
                        <a href="">Power</a>
                    </li>
                    <li class="nav-item">
                        <a href="">Careers</a>
                    </li>
                    <li class="nav-item">
                        <a href="contact.html">Contact Us</a>
                    </li>
                </ul>-->
                <div class="offcanvas-footer">
                    <div class="item-title">Follow Me</div>
                    <ul class="offcanvas-social">
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                        <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                        <li><a href="#"><i class="fab fa-pinterest"></i></a></li>
                        <li><a href="#"><i class="fas fa-rss"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="header-search" class="header-search">
            <button type="button" class="close">×</button>
            <form class="header-search-form">
                <input type="search" value="" placeholder="Search here..." />
                <button type="submit" class="search-btn">
                    <i class="flaticon-search"></i>
                </button>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
 
    <!-- Jquery Js Start Here -->
    <script src="../js/jquery-3.4.1.min.js"></script>
    <!-- Bootstrap Js Start Here -->
    <script src="../js/bootstrap.min.js"></script>
    <!-- Wow Js Start Here -->
    <script src="../js/wow.min.js"></script>
    <!-- Owl Carousel Js Start Here -->
    <script src="../vendor/owlcarousel/owl.carousel.min.js"></script>
    <!-- Slick Js Start Here -->
    <script src="../js/slick.js"></script>
    <script src="../js/slick.min.js"></script>
    <!-- Nivo Js Start Here -->
    <script src="../vendor/nivo-slider/jquery.nivo.slider.js"></script>
    <script src="../vendor/nivo-slider/home.js"></script>
    <!-- Meanmenu Js Start Here -->
    <script src="../js/jquery.meanmenu.min.js"></script>
    <!-- Google Map js -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtmXSwv4YmAKtcZyyad9W7D4AC08z0Rb4"></script>
    <!-- Circle Js Start Here -->
    <script src="../js/circle-progress.min.js"></script>
    <!-- Form Validator Js Start Here -->
    <script src="../js/validator.min.js"></script>
    <!-- Main Js Start Here -->
    <script src="../js/main.js"></script>
    <script src="../js/HrJobDescription.js"></script>
</body>


</html>
