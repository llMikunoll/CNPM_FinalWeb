<%-- 
    Document   : NoiDung
    Created on : 05-Nov-2020, 19:08:00
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%--
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    --%>

    <head>

        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Trang chu</title>

        <!-- Bootstrap Core CSS -->
        <link href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="resources/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="resources/dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="resources/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    </head>

    <%--
    <body>
        <%
            String username = (String) session.getAttribute("username");
            if (session != null) {
                out.print("Lo con cac" + username);
            } else {
                out.print("LO CON CAC");
            }
        %>
        <h1><a href="LogoutServlet">Thoat ra</h1>
        <h1>Hello World!</h1>
    </body>
    --%>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Quan ly quan Karaoke</a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right">
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="Controller"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">

                            <li>
                                <a href="Trangchu.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Quản lý phòng<span
                                        class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="NoiDung.jsp">Đặt phòng</a>
                                    </li>
                                    <li>
                                        <a href="#">Thanh toán</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="Khuvuc" style="float: left;">
                                <b>
                                    <p>Khu vực</p>
                                </b>
                                <button onclick="Lau1()">Lau 1</button>
                                <button onclick="Lau2()">Lau 2</button>
                                <button onclick="Lau3()">Lau 3</button>

                            </div>

                            <div id="Lau1" style="float: left;">
                                <b>
                                    <p>Lầu 1</p>
                                </b>
                                <a href="Form_DatPhong.jsp?RoomNum=101"><button>101</button></a>
                                <a href="Form_DatPhong.jsp?RoomNum=102"><button>102</button></a>
                                <a href="Form_DatPhong.jsp?RoomNum=103"><button>103</button></a>


                            </div>

                            <div id="Lau2" style="float: left;">
                                <b>
                                    <p>Lầu 2</p>
                                </b>
                                <a href="Form_DatPhong.jsp?RoomNum=201"><button>201</button></a>
                                <a href="Form_DatPhong.jsp?RoomNum=202"><button>202</button></a>
                                <a href="Form_DatPhong.jsp?RoomNum=203"><button>203</button></a>
                                <a href="Form_DatPhong.jsp?RoomNum=204"><button>204</button></a>
                                <a href="Form_DatPhong.jsp?RoomNum=205"><button>205</button></a>


                            </div>

                            <div id="Lau3" style="float: left;">
                                <b>
                                    <p>Lầu 3</p>
                                </b>
                                <a href="Form_DatPhong.jsp?RoomNum=301"><button>301</button></a>
                                <a href="Form_DatPhong.jsp?RoomNum=302"><button>302</button></a>
                                <a href="Form_DatPhong.jsp?RoomNum=303"><button>303</button></a>
                                <a href="Form_DatPhong.jsp?RoomNum=304"><button>304</button></a>

                            </div>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="resources/bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="resources/bower_components/metisMenu/dist/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="resources/dist/js/sb-admin-2.js"></script>

    </body>
</html>
