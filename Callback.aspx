<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Callback.aspx.cs" Inherits="Callback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <h1 runat="server" id="h1Message"></h1>
                <p runat="server" id="pTxnId"></p>
                <p>Click here to go to home</p>
                <p><a class="btn btn-primary btn-lg" href="Default.aspx" role="button">Home</a></p>
            </div>
        </div>
    </form>
</body>
</html>
