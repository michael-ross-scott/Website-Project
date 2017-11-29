<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Canabiz.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="productDetail" runat="server"
        ItemType="Canabiz.Models.Product" SelectMethod="GetProduct"
        RenderOuterTable="false">


        
        

        <ItemTemplate>
            <div>
                <h1><%#:Item.ProductName %></h1>
            </div>
            <br />
            <div class="thumbnail">
                    <img class="img-responsive" src="Images/<%#:Item.ImagePath %>" alt="">
                    <div class="caption-full">
                        <h4 class="pull-right">Price: &nbsp;<%#: String.Format("{0:c}",Item.UnitPrice) %></h4>
                        <h4><a href="#"><%#:Item.ProductName %></a>
                        </h4>
                        <b>Description:</b><br />
                        <%#:Item.Description %>
                        <br />
                    </div>
                </div>
        </ItemTemplate>
    
    </asp:FormView>
    <link href="Content/CSS/Star-ratings.css" rel="stylesheet" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="Scripts/star-rating.js"></script>


    <div class="well">
        <h2>Leave a Review:</h2>
        <br>
        <div class="text-left">

            <asp:Label ID="lblName" runat="server">Name:</asp:Label>

            <asp:TextBox ID="tbxName" class="form-control" runat="server" required data-validation-required-message="Please enter your name."></asp:TextBox>
            <asp:Label ID="addStatus" runat="server"></asp:Label>
        </div>

        <br>
        <br>

        <div class="text-left">
            <label>Rating:</label>
            <input style="display: inline-block" class="rating" ID="ratingOut10" value="0" type="number" min="0" max="10" step="1" data-size="l" runat="server">
        </div>

        <div class="text-left">
            <textarea ID="LeaveReview" class="form-control" rows="5" runat="server" placeholder="Review Description" required data-validation-required-message="Please enter your review" style="width: 100%"></textarea>
        </div>

        <div class="text-right">
            <asp:Button runat="server" ID="submitBtn" CssClass="btn-success" text="Write a review" OnClick="submitBtn_Click" CausesValidation="false"/>
        </div>
        <br>
        <br>
        <div class="well">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProductID" GroupItemCount="4" ItemType="Canabiz.Models.Ratings" SelectMethod="GetRating">
            <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
            <ItemTemplate>
                <table style="width:100%">
                    <tr>
                        <td>
                            <div class="col-md-12">
                                <h2><%#:Item.ReviewerName %>:</h2>
                                <input style="display: inline-block" class="rating" value="<%# Item.RatingOutOfTen %>" type="number" min="0" max="10" step="1" data-size="l" readonly="true">
                            </div>
                            <hr>
                        <td>
                            <div class="col-md-12"></div>
                            
                            <textarea style="width:800px; float:right" readonly="true"><%#:Item.ReviewDescription %></textarea>
                            </div>
                            
                        </td>
                        <td>
                            <span class="pull-right"><%# Item.DaysAgo %> days ago</span>
                        </td>
                    </tr>
                    <hr>
                </table>
            </ItemTemplate>
        </asp:ListView>
        </div>


    </div>
   

</asp:Content>

