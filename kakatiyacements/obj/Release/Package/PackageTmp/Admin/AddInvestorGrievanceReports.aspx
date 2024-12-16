<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddInvestorGrievanceReports.aspx.cs" Inherits="kakatiyacements.Admin.AddInvestorGrievanceReports" %>

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
            background-image: url(../img/strips/login1.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
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
                                    <!--<li>
                                <div class="header-right-button">
                                    <a href="#" class="header-btn">Contact us </a>
                                </div>
                            </li>-->
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
    
   
       <li>
          <a href="#">Investors</a>
          <ul class="dropdown-menu-col-1">
              <li><a href="AddDisclosure.aspx">Add Disclosure Under Regulation 46 of SEBI (LODR), 2015</a></li>
              <li><a href="BoardofDirectors.aspx">Add Board of Directors and KMPS</a></li>
              <li><a href="AddCompositionofBoardCommittees.aspx">Add Composition of Board Committees</a></li>
              <li><a href="AddContactDetails.aspx">Add Contact Details of Official Responsible for Investor Grievance Redressal</a></li>
              <li><a href="AddDetailsofRTA.aspx">Details of RTA</a></li>
              <li><a href="AddPolicies.aspx">Add Policies</a></li>
              <li><a href="CsrReports.aspx">Add CSR Reports</a></li>
              <li><a href="AddShareholdingPattern.aspx">Add Shareholding Pattern</a></li>
              <li><a href="AddFinancialResults.aspx">Add Financial Results</a></li>
              <li><a href="AddInvestorGrievanceReports.aspx">Add Investor Grievance Reports</a></li>
              <li><a href="AddCorporateGovernanceReport.aspx">Add Corporate Governance Reports</a></li>
              <li><a href="AddAnnualReport.aspx">Add Annual Reports and Annual Returns</a></li>
              <li><a href="AddUnpaidDividendIepf.aspx">Unpaid Dividend /IEPF</a></li>
              <li><a href="ShareholdersInformation.aspx">Shareholders Information</a></li>
              <li><a href="AddScrutinizersReports.aspx">Scrutinizers Report</a></li>
              <li><a href="AddReconciliationOfShareCapitalAudit.aspx">Reconciliation of Share Capital Audit</a></li>
              <li><a href="AddSebiSastFilings.aspx">SEBI (Sast) Filings</a></li>
              <li><a href="AddSEBI(PIT)SDDComplianceCertificates.aspx">SEBI (PIT) SDD Compliance Certificates </a></li>
              <li><a href="AddRelatedPartyTransactions.aspx">Related Party Transactions</a></li>
          </ul>
      </li>
      <li>
          <a href="#">Shareholders Information</a>
          <ul class="dropdown-menu-col-1">
              <li><a href="AddCommunicationswithShareholders.aspx">Add Communications with Shareholders</a></li>
 <li><a href="AddKycComplianceDocuments.aspx">Add Kyc Compliance Documents</a></li>
<li><a href="DisclosureUnderRegulation302015.aspx">Add Disclosure Under Regulation 30 Of SEBI (Lodr) Regulations 2015</a></li>
  <li><a href="AddBoardMeetingNotices.aspx">Add Board Meeting Notices</a></li>
  <li><a href="OutcomeofBoardMeeting.aspx">Add Outcome of Board Meetings</a></li>
  <li><a href="AddPaperAdvertisements.aspx">Add Paper Advertisements</a></li>
  <li><a href="AddTradingWindowClosure.aspx">Add Trading Window Closure</a></li>
  <li><a href="CertificateUnderRegulation40(10).aspx">Add Certificate Under Regulation 40 (10)</a></li>
  <li><a href="AddCertificateUnderRegulation7(3).aspx">Add Certificate Under Regulation 7 (3)</a></li>
  <li><a href="AddCertificateUnderRegulation74(5).aspx">Add Certificate Under Regulation 74 (5)</a></li>
  <li><a href="AddAgmEgmProceedings.aspx">Add AGM/EGM Proceedings</a></li>
  <li><a href="AddSecretarialComplianceReports.aspx">Add Secretarial Compliance Reports</a></li>
  <li><a href="AddBookClosure.aspx">Add Book Closure</a></li>
  <li><a href="AddNoticesofGeneralMeetings.aspx">Add Notices of General Meetings</a></li>
      </ul>
      </li>
   <li><a href="AddUser.aspx" id="adminListItem" runat="server">Admin</a></li>                                                                    
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
                            <h1 class="page-title">Add Investor Grievance Reports</h1>
                            <nav>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Add Investor Grievance Reports</li>
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
                             <h2>Add Investor Grievance Reports</h2>
<br />
                 <form runat="server">
                       <div class="row g-3">
                               <div class="col-lg-3 form-group">
                                      <input type="text"  class="col-lg-12 form-control" id="StratYear" name="StratYear" placeholder="Start Year" required  onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"/>
                             
                                 </div>
                                   <div class="col-lg-3 form-group">
                                      <input type="text"  class="col-lg-12 form-control" id="EndYear" name="EndYear" placeholder="End Year" required  onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"/>
                             
                                 </div>
                               <div class="col-lg-3 form-group">
                                   <select name="Quaterly" id="Quaterly" class="col-lg-12 form-control" >
                                        <option value="">--select Quaterly Period--</option>
                                       <option value="Q1">Q1</option>
                                       <option value="Q2">Q2</option>
                                       <option value="Q3">Q3</option>
                                       <option value="Q4">Q4</option>
                                    </select>
                                </div>
                               
                               <div class="col-lg-3 form-group">
                                     <asp:FileUpload ID="fileUpload" name="file" runat="server"   class="col-lg-12 form-control" aria-required="true" aria-invalid="false" placeholder="file"   />
                                </div>
     
                             <div class="col-lg-3 form-group">
                               
                                 <asp:Button class="btn btn-primary col-lg-5" runat="server" ID="save" Text="Save"  OnClick="save_Click" />
                             </div>
                           </div>
                     </form>
                 
                    <br />
                <br />
                <div style=" overflow: auto;">
                <table id="mail-Data" class="table table-striped border-bottom" >
                    <thead class="thead-dark">
                    <tr><th>S.No</th><th>Quaterly</th><th>Start Year</th><th>End Year</th><th>Edit</th><th>Delete</th></tr>
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
                     <label for="StratYearModel" style=" position: relative;left: 5%;">Start Year</label>
                        <div class="col-10">
                         <input type="text"  class="form-control" id="StratYearModel" required onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))" >
                       </div>
                   <br />
                       <label for="EndYearModel" style=" position: relative;left: 5%;">End Year</label>
                         <div class="col-10">
                          <input type="text"  class="form-control" id="EndYearModel" required onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))">
                        </div>
                    <br />
                       <label for="QuaterlyModel" style=" position: relative;left: 5%;">Quaterly Period</label>
                         <div class="col-10">
                         <select name="QuaterlyModel" id="QuaterlyModel" class="col-lg-12 form-control" >
                                     <option value="">-select Quaterly Period-</option>
                                    <option value="Q1">Q1</option>
                                    <option value="Q2">Q2</option>
                                    <option value="Q3">Q3</option>
                                    <option value="Q4">Q4</option>
                                 </select>
                        </div>
                    <br />
                  
                
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
                                            <li><a href="../profile.html"><i class="fas fa-angle-right"></i>Profile</a></li>
                                            <li><a href="../cement.html"><i class="fas fa-angle-right"></i>Cement</a></li>
                                            <li><a href="../sugar.html"><i class="fas fa-angle-right"></i>Sugar</a></li>
                                            <li><a href="../power.html"><i class="fas fa-angle-right"></i>Power</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6">
                                        <ul class="footer-list2">
                                            <li><a href="../disclosure-under-regulations-sebi.html"><i class="fas fa-angle-right"></i>Investors</a></li>
                                            <li><a href="https://smartodr.in/login" target="_blank"><i class="fas fa-angle-right"></i>Smart ODR</a></li>
                                            <li><a href="../careers.html"><i class="fas fa-angle-right"></i>Careers</a></li>
                                            <li><a href="../login.html"><i class="fas fa-angle-right"></i>Login</a></li>
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
                    <a href="../index.html"><img src="img/logo1.jpg" alt="Logo"></a>
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
        <!--=====================================-->
        <!--=      Header Search Start          =-->
        <!--=====================================-->
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/5.0.8/jquery.inputmask.min.js" type="text/javascript"></script>
   <script>
       function load() {
           $("#StratYear").inputmask({ "mask": "9999" });
           $("#EndYear").inputmask({ "mask": "9999" });
          
       }
       load();
   </script>
    <script src="../js/AddInvestorGrievanceReports.js"></script>
</body>


</html>




