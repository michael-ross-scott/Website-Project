<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="ProductList.aspx.cs" Inherits="Canabiz.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <div id="CategoryMenu" style="text-align: left">
            <div class="col-md-3">
            <hgroup>
                <h2><a href="/ProductList.aspx?"><%: Page.Title %></a></h2>
            </hgroup>
            
            
            <asp:ListView ID="categoryList"
                ItemType="Canabiz.Models.Category"
                runat="server"
                SelectMethod="GetCategories">

                <ItemTemplate>
                    <b style="font-size: 150%; font-style: normal"; text-shadow: -1px 0 black, 0 1px black,1px 0 black, 0 -1px black; padding: 50px 30px 50px 80px;background-color:grey>
                        <a href="/ProductList.aspx?id=<%#: Item.CategoryID %>">
                            <%#: Item.CategoryName %><p></p>
                        </a>
                    </b>
                </ItemTemplate>
            </asp:ListView>
            </div>
            </div>
            <div class ="col-md-8" style="padding-bottom:30px">
                <img src="Images/prod2.png" alt="merch" style="height:300px; width:825px">
            </div>
        </div>
            <asp:ListView ID="productList" runat="server"
                DataKeyNames="ProductID" GroupItemCount="4"
                ItemType="Canabiz.Models.Product" SelectMethod="GetProducts">
                <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a
                                        href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                        <img
                                            src="Images/<%#:Item.ImagePath%>"
                                            width="256" height="256"/></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a
                                        href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                        <span>
                                            <%#:Item.ProductName%>
                                        </span>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Price: </b><%#:String.Format("{0:c}",Item.UnitPrice)%>
                                    </span>
                                    <br />
                                    <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>">
                                        <span class="ProductListItem">
                                            <b>Add To Cart<b>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width: 100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer"
                                        runat="server" style="width: 100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
    </section>

</asp:Content>
