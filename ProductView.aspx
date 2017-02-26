<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding-top: 50px">
        <div class="col-md-5">
            <div style="max-width: 480px" class="thumbnail">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <asp:Repeater ID="rptrImages" runat="server">
                            <ItemTemplate>
                                <div class="item <%# GetActiveClass(Container.ItemIndex) %>">
                                    <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <div class="divDet1">
                <h1 class="proNameView">WROGN Men Blue Slim Fit Printed Casual Shirt</h1>
                <span class="proOgPriceView">Rs. 1899</span><span class="proPriceDiscountView"> 210 OFF</span>
                <p class="proPriceView">Rs. 1228</p>
            </div>
            <div>
                <h5 class="h5Size">SIZE</h5>
                <div>
                    <asp:RadioButtonList ID="rblSize" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <asp:ListItem Value="M" Text="M"></asp:ListItem>
                        <asp:ListItem Value="L" Text="L"></asp:ListItem>
                        <asp:ListItem Value="XL" Text="XL"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="divDet1">
                <asp:Button ID="btnAddToCart" CssClass="mainButton" runat="server" Text="ADD TO CART" />
            </div>
            <div class="divDet1">
                <h5 class="h5Size">Description</h5>
                <p>
                    Cozy up with this in-style WROGN shirt this season. A pair of sneakers and 
                    slim denim are the perfect additions to this 
                    blue piece when you're going outside for a day in the park.
                </p>
                <h5 class="h5Size">Product Details</h5>
                <p>
                    Blue printed casual shirt, has a spread collar, button placket, long sleeves, curved hem.
                </p>
                <h5 class="h5Size">Material & Care</h5>
                <p>
                    100% cotton Machine-wash.
                </p>
            </div>
            <div>
                <p>Free Delivery</p>
                <p>30 Days Returns</p>
                <p>Cash on Delivery</p>
            </div>
        </div>
    </div>
</asp:Content>

