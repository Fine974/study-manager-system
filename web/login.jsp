<%--
  Created by IntelliJ IDEA.
  User: Fine
  Date: 2023/6/23
  Time: 15:07
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>登录</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="images/favicon.png"/>
</head>

<body>
<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
            <div class="row w-100 mx-0">
                <div class="col-lg-4 mx-auto">
                    <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                        <div class="brand-logo">
                            <img src="images/logo.png" alt="logo">
                        </div>
                        <h4>你好！让我们开始吧！</h4>
                        <h6 class="font-weight-light">登录以继续</h6>
                        <form class="pt-3" action="login" method="post">
                            <div class="form-group">
                                <input type="text" name="uname" class="form-control form-control-lg"
                                       id="exampleInputEmail1" placeholder="用户名">
                            </div>
                            <div class="form-group">
                                <input type="password" name="upsw" class="form-control form-control-lg"
                                       id="exampleInputupsw1" placeholder="密码">
                            </div>
                            <span style="color: #F00;font-size: 15px">${info}</span>
                            <div class="mt-3">
                                <button class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">登录</button>
                            </div>
                            <div class="my-2 d-flex justify-content-between align-items-center">
                                <div class="form-check">
                                    <label class="form-check-label text-muted">
                                        <input type="checkbox" class="form-check-input"> 保持登录
                                    </label>
                                </div>
                                <a href="#" class="auth-link text-black">忘记密码？</a>
                            </div>
                            <div class="text-center mt-4 font-weight-light">
                                没有账号？ <a href="register.jsp" class="text-primary">点击注册</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="vendors/base/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- inject:js -->
<script src="js/off-canvas.js"></script>
<script src="js/hoverable-collapse.js"></script>
<script src="js/template.js"></script>
<!-- endinject -->
</body>

</html>
