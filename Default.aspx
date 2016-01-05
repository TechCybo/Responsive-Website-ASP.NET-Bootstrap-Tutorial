<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx" > <span> <img alt="Logo" src="Images/tc only 512.png" height="30" /></span>TecyCybo</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header">Men</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Shirts</a></li>
                                <li><a href="#">Pants</a></li>
                                <li><a href="#">Denims</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Women</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Top</a></li>
                                <li><a href="#">Leggings</a></li>
                                <li><a href="#">Denims</a></li>
                            </ul>
                        </li>
                        <li><a href="SignUp.aspx">Sign Up</a></li>
                        <li><a href="SignIn.aspx">Sign In</a></li>
                    </ul>
                </div>
            </div>
        </div> 

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
        <br/>
        <br/>
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
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
