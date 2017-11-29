<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Canabiz.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/CSS/bootstrap.min.css" rel="stylesheet">
    <link href="Content/CSS/round-about.css" rel="stylesheet">

    <!-- Page Content -->
    <div class="container">

        <!-- Introduction Row -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">About Us
                    <small>Hello there!</small>
                </h1>
                <p>Cannoisseurs was founded by four students in Cape Town. We noticed the
                    increase in demand for high quality marijuana related products here in South Africa; and decided that the best way
                    to deal with it was to become everyone's dealer!</p>
                <p>Here is our eCommerce website that we hope will grow with the emerging cannabis industry.</p>
            </div>
        </div>

        <!-- Team Members Row -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Our Team</h2>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="Images/maggie2.png" alt="maggie">
                <h3>Maggie Fok
                    <small>CEO</small>
                </h3>
                <p>Cheif Executive Officer? pff, more like Chief Entertainment Officer! Maggie is in charge of our startup!</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="Images/mike.png" alt="mike">
                <h3>Michael Scott
                    <small>CTO</small>
                </h3>
                <p>Everything you are seeing would not be here if it wasn't for Michael. He makes sure that this business runs, and runs better than our competitors.</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="Images/angus.png" alt="angus">
                <h3>Angus Mackenzie
                    <small>Marketing</small>
                </h3>
                <p>Who do you think did everything for this? Not this guy! But he is good at talking to people, so we keep him around! He is also cool.</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="Images/clear.png">
                <h3>        
                    <small>           </small>
                </h3>
                <p>                                                                   </p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="Images/lucia.png" alt="lucia">
                <h3>Lucia Ma
                    <small>Systems Administrator</small>
                </h3>
                <p>While Mike is elevating our tech presence to the next level; Lucia is making sure that all our systems run smoothly!</p>
            </div>
        </div>

        <!--Legal Section-->
        <div>
           <h2>Legal Documents</h2>
            <p>Find out the law behind our website.</p>
            <ul class="list-unstyled list-inline"style="text-align: center; font-size: 150%">
                <li><a href="Content/PDF/termsandconditions.pdf" target="_blank"><i class="fa fa-file-pdf-o"></i> Terms &amp; Conditions</a></li>
                <li><a href="Content/PDF/Refund-and-Cancellation.pdf" target="_blank"><i class="fa fa-file-pdf-o"></i> Refund/Cancellation Policy</a></li>
                <li><a href="Content/PDF/privacy.pdf" target="_blank"><i class="fa fa-file-pdf-o"></i> Privacy Policy</a></li>
                <li><a href="Content/PDF/weed.pdf" target="_blank"><i class="fa fa-file-pdf-o"></i> Drug Policy</a></li>
            </ul>
        </div>
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</asp:Content>