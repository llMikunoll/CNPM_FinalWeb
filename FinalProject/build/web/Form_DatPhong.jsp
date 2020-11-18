<%-- 
    Document   : Form_DatPhong
    Created on : 08-Nov-2020, 14:43:28
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Booking Form</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.min.css" />

        <!-- Custom stlylesheet -->
    <a href="NoiDung.jsp"></a>
    <link type="text/css" rel="stylesheet" href="resources/css/style.css" />

    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
        $(function () {
            $("#datepicker").datepicker();
        });
    </script>

</head>
<body>

    <div id="booking" class="section">
        <div class="section-center">
            <div class="container">
                <div class="row">
                    <div class="booking-form">

                        <div class="form-header">
                            <h1>Đặt phòng karaoke</h1>
                        </div>
                        ${add}
                        <form action="GetForm" method="POST">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="form-label">Họ tên khách hàng</label>
                                        <input name="name" class="form-control" type="text" placeholder="Họ và tên khách hàng">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <span class="form-label">Số điện thoại</span>
                                <input name="phone" class="form-control" type="tel" placeholder="Nhập vào số điện thoại khách">
                            </div>
                            <div class="form-group">
                                <span class="form-label">Loại phòng</span>
                                <input type="radio" name="typeRoom" value="Normal"> Normal
                                <input type="radio" name="typeRoom" value="Premium"> Premium
                            </div>
                            <div class="form-group">
                                <span class="form-label">Số phòng</span>
                                <input name="numRoom" class="form-control" type="text" id="numRoom">
                            </div>
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <span class="form-label">Ngày đặt</span>
                                        <input name="day" path="day" class="form-control" type="text" id="datepicker" >
                                       
                                    </div>
                                </div>
                                <div class="col-sm-7">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <span class="form-label">Giờ</span>
                                                <select name="hour" class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                    <option>6</option>
                                                    <option>7</option>
                                                    <option>8</option>
                                                    <option>9</option>
                                                    <option>10</option>
                                                    <option>11</option>
                                                    <option>12</option>
                                                </select>
                                                <span class="select-arrow"></span>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <span class="form-label">Phút</span>
                                                <select name="min" class="form-control">
                                                    <option>05</option>
                                                    <option>10</option>
                                                    <option>15</option>
                                                    <option>20</option>
                                                    <option>25</option>
                                                    <option>30</option>
                                                    <option>35</option>
                                                    <option>40</option>
                                                    <option>45</option>
                                                    <option>50</option>
                                                    <option>55</option>
                                                </select>
                                                <span class="select-arrow"></span>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <span class="form-label">AM/PM</span>
                                                <select name="time" class="form-control">
                                                    <option>AM</option>
                                                    <option>PM</option>
                                                </select>
                                                <span class="select-arrow"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-btn">
                                <input type="submit" value="Add" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        const queryString = window.location.search;
        console.log(queryString);
        const urlParams = new URLSearchParams(queryString);
        const product = urlParams.get('RoomNum');
        document.getElementById("numRoom").value = product;
    </script>
</body>
</html>
