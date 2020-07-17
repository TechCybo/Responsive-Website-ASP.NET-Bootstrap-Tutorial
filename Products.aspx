<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralLayout.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row" style="padding-top: 50px">
            <asp:Repeater ID="rptrProducts" runat="server">
                <ItemTemplate>
                    <div class="col-sm-3 col-md-3">
                        <a style="text-decoration: none;" href="ProductView.aspx?PID=<%#Eval("PID") %>">
                            <div class="img-thumbnail">
                                <img class="img-fluid" src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>" alt="<%#Eval("ImageName") %>">
                                <div class="p-2">
                                    <div class="probrand pb-1"><%#Eval("BrandName") %></div>
                                    <div class="proName"><%#Eval("PName") %></div>
                                    <div class="proPrice"><span class="proOgPrice"><%#Eval("PPrice") %></span> <%#Eval("PSelPrice") %> <span class="proPriceDiscount">(<%#Eval("DiscAmount") %>  Off)</span></div>
                                </div>
                            </div>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

