<%@ Page Title="Welcome to Cannoisseurs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Canabiz._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/CSS/bootstrap.min.css" rel="stylesheet">
    <link href="Content/CSS/half-slider.css" rel="stylesheet">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">

      <img src="Images/cover3.png" alt="cover1" style="width:1200px; height:600px;"/>

      <div class="carousel-caption">
        <h3>Loads of Products!</h3>
      </div>
    </div>

    <div class="item">
      <img src="Images/cover2.png" alt="cover2" style="width:1400px; height:600px;">
      <div class="carousel-caption">
        <h3>Love that weed life!</h3>
      </div>
    </div>

    <div class="item">
      <img src="Images/cover1.png" alt="cover3" style="width:1200px; height:600px;">
      <div class="carousel-caption">
        <h3>Free Shipping!</h3>
   
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    <!-- Page Content -->
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h1><%: Title %></h1>
                <h2>We are Cannoisseurs!</h2>
                <h3>We are here to help you find the perfect tool to enhance your smoking experience!</h3>
                <br />
                <p>Cannoisseurs is a store specialising in the selling of smoking paraphernalia for multiple uses. We have all the products you need for your recreational
                    and medical uses! 
                    <br />
                    Our products are reviewed by other enthusiast so you know what suits you exactly! Really love a product? Well go review it so other people know how much
                    you like it!
                </p>
                <p><br />
                    If you are interested in the legality behind our online store, please visit the <a href="/About.aspx?">About Us</a> page
                </p>
            </div>
        </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

      </div>
</asp:Content>
