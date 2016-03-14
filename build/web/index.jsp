<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="PT-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SOS</title>

        <!-- Bootstrap -->
        <link href="assets/css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/sidebar.css" rel="stylesheet">
        <link href="assets/css/portal.css" rel="stylesheet">

        <script src="assets/js/jquery-2.2.1.js"></script>
        <script src="assets/css/bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="_layouts/header.jsp" %>

        <div id="wrapper">
            <%@include file="_layouts/sidebar.jsp" %>

            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <h1>Simple Sidebar</h1>
                            <p>This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.</p>
                            <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>
                            <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
                        </div>
                    </div>
                </div>
            </div>

    </body>
</html>
