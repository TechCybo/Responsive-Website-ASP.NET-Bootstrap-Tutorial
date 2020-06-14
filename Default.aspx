<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">
                    <img alt="Logo" src="Images/tc only 512.png" height="30" />
                    TechCybo.com
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="Default.aspx">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="Products.aspx" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">All Products
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Shirts</a>
                                <a class="dropdown-item" href="#">Pants</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Mobile Phones</a>
                            </div>
                        </li>
                    </ul>
                    <div class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" />
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>

                        <button id="btnCart" class="btn btn-primary navbar-btn ml-2" type="button">
                            Cart <span class="badge" id="pCount" runat="server"></span>
                        </button>
                    </div>
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item" id="btnSignup" runat="server"><a class="nav-link" href="SignUp.aspx">Sign Up</a></li>
                        <li class="nav-item" id="btnSignin" runat="server"><a class="nav-link" href="SignIn.aspx">Sign In</a></li>
                        <li class="nav-item">
                            <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default nav-link" Text="Sign out" OnClick="btnSignOut_Click" />
                        </li>
                    </ul>
                </div>
            </nav>

            <!--- Carousel -->

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="Images/Carousel 01.jpg" alt="...">
                        <div class="carousel-caption">
                            <h3>Iphone 6 Plus</h3>
                            <p>The New Iphone 6 Plus</p>
                            <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Us Today</a></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Images/Carousel 02.jpg" alt="...">
                        <div class="carousel-caption">
                            <h3>Galaxy Note 4</h3>
                            <p>Bigger Note</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Images/Carousel 03.jpg" alt="...">
                        <div class="carousel-caption">
                            <h3>Lg Ultrawide LED Monitor</h3>
                            <p>Wide angle</p>
                        </div>
                    </div>
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

            <!--- Carousel -->

        </div>
        <br />
        <br />
        <!--- Middle Contents -->
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb01.jpeg" alt="thumb01" width="140" height="140" />
                    <h2>Mobiles</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu nunc eu felis mollis suscipit. Vivamus at turpis nisi. Nam a metus ac velit malesuada accumsan vel ut mauris. Proin eleifend orci tempor, faucibus felis sagittis, auctor ante. Fusce quis pellentesque metus, eu dictum est. Quisque finibus urna ac metus placerat, id porttitor ligula luctus. Nullam tincidunt, lorem at tincidunt dignissim, purus nunc tincidunt enim, vitae aliquam ante orci efficitur leo. Vivamus ac pretium libero. Quisque venenatis leo vel nibh pretium malesuada. Phasellus aliquam nunc vel e</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb02.jpg" alt="thumb02" width="140" height="140" />
                    <h2>Clothing</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu nunc eu felis mollis suscipit. Vivamus at turpis nisi. Nam a metus ac velit malesuada accumsan vel ut mauris. Proin eleifend orci tempor, faucibus felis sagittis, auctor ante. Fusce quis pellentesque metus, eu dictum est. Quisque finibus urna ac metus placerat, id porttitor ligula luctus. Nullam tincidunt, lorem at tincidunt dignissim, purus nunc tincidunt enim, vitae aliquam ante orci efficitur leo. Vivamus ac pretium libero. Quisque venenatis leo vel nibh pretium malesuada. Phasellus aliquam nunc vel e</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb03.jpg" alt="thumb03" width="140" height="140" />
                    <h2>Footwear</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu nunc eu felis mollis suscipit. Vivamus at turpis nisi. Nam a metus ac velit malesuada accumsan vel ut mauris. Proin eleifend orci tempor, faucibus felis sagittis, auctor ante. Fusce quis pellentesque metus, eu dictum est. Quisque finibus urna ac metus placerat, id porttitor ligula luctus. Nullam tincidunt, lorem at tincidunt dignissim, purus nunc tincidunt enim, vitae aliquam ante orci efficitur leo. Vivamus ac pretium libero. Quisque venenatis leo vel nibh pretium malesuada. Phasellus aliquam nunc vel e</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
            </div>
        </div>
        <!--- Middle Contents -->

        <!--- Footer  -->

        <hr />

        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2015 TechCybo.com &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>

        <!--- Footer -->

    </form>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
