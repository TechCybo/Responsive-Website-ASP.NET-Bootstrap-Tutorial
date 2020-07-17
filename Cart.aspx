<%@ Page Title="Cart" Language="C#" MasterPageFile="~/GeneralLayout.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row" style="padding-top: 20px;">
            <div class="col-md-9">
                <h5 class="proNameViewCart" runat="server" id="h5NoItems"></h5>

                <asp:Repeater ID="rptrCartProducts" runat="server">
                    <ItemTemplate>
                        <div class="media my-3" style="border: 1px solid #eaeaec;">
                            <div class="align-self-center mr-3">
                                <a href="ProductView.aspx?PID=<%#Eval("PID") %>" target="_blank">
                                    <img width="110px" class="media-object" src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'">
                                </a>
                            </div>
                            <div class="media-body">
                                <h5 class="media-heading proNameViewCart"><%#Eval("PName") %></h5>
                                <p class="proPriceDiscountView">Size : <%#Eval("SizeNamee") %></p>
                                <span class="proPriceView"><%#Eval("PSelPrice","{0:c}") %></span>
                                <span class="proOgPriceView"><%#Eval("PPrice","{0:0,00}") %></span>
                                <p>
                                    <asp:Button CommandArgument='<%#Eval("PID")+"-"+ Eval("SizeIDD")%>' ID="btnRemoveItem" OnClick="btnRemoveItem_Click" CssClass="removeButton" runat="server" Text="REMOVE" />
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-md-3 pt-5" runat="server" id="divPriceDetails">
                <div style="border-bottom: 1px solid #eaeaec;">
                    <h5 class="proNameViewCart">PRICE DETAILS</h5>
                    <div>
                        <label>Cart Total</label>
                        <span class="float-right priceGray" id="spanCartTotal" runat="server"></span>
                    </div>
                    <div>
                        <label>Cart Discount</label>
                        <span class="float-right priceGreen" id="spanDiscount" runat="server"></span>
                    </div>
                </div>
                <div>
                    <div class="proPriceView">
                        <label>Total</label>
                        <span class="float-right" id="spanTotal" runat="server"></span>
                    </div>
                    <div>
                        <asp:Button ID="btnBuyNow" OnClick="btnBuyNow_Click" CssClass="buyNowBtn" runat="server" Text="BUY NOW" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

