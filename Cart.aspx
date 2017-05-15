<%@ Page Title="Cart" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding-top: 20px;">
        <div class="col-md-9">
            <h5 class="proNameViewCart">MY CART (2 Items)</h5>
            <div class="media" style="border: 1px solid #eaeaec;">
                <div class="media-left">
                    <a href="#">
                        <img width="100px" class="media-object" src="Images/ProductImages/10005/WROGN Men Blue Slim Fit Printed Casual Shirt01.jpg" alt="product">
                    </a>
                </div>
                <div class="media-body">
                    <h5 class="media-heading proNameViewCart">WROGN Men Blue Slim Fit Printed Casual Shirt</h5>
                    <p class="proPriceDiscountView">Size : 42</p>
                    <span class="proPriceView">Rs : 1400</span>
                    <span class="proOgPriceView">1900</span>
                    <p>
                        <asp:Button ID="btnRemoveItem" OnClick="btnRemoveItem_Click" CssClass="removeButton" runat="server" Text="REMOVE" />
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div style="border-bottom: 1px solid #eaeaec;">
                <h5 class="proNameViewCart">PRICE DETAILS</h5>
                <div>
                    <label>Cart Total</label>
                    <span class="pull-right priceGray">1900</span>
                </div>
                <div>
                    <label>Cart Discount</label>
                    <span class="pull-right priceGreen">- 500</span>
                </div>
            </div>
            <div>
                <div class="proPriceView">
                    <label>Total</label>
                    <span class="pull-right">Rs. 1400</span>
                </div>
                <div>
                    <asp:Button ID="btnBuyNow" OnClick="btnBuyNow_Click" CssClass="buyNowBtn" runat="server" Text="BUY NOW" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

