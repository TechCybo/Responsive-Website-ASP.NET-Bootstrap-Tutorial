<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row" style="padding-top: 50px">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
                <div class="col-sm-3 col-md-3">
                    <div class="thumbnail">
                        <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>" alt="<%#Eval("ImageName") %>">
                        <div class="caption">
                            <div class="probrand"><%#Eval("BrandName") %></div>
                            <div class="proName"><%#Eval("PName") %></div>
                            <div class="proPrice"><span class="proOgPrice"><%#Eval("PPrice") %></span> <%#Eval("PSelPrice") %> <span class="proPriceDiscount">(<%#Eval("DiscAmount") %>  Off)</span></div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

