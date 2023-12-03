<%--
  Created by IntelliJ IDEA.
  User: Fine
  Date: 2023/6/23
  Time: 15:34
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>注册</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="images/favicon.png" />
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
                        <h4>新用户？</h4>
                        <h6 class="font-weight-light">注册很容易，只需要几个步骤</h6>
                        <form class="pt-3" action="register" method="get">
                            <div class="form-group">
                                <input type="text" name="uname" class="form-control form-control-lg" id="exampleInputUsername1" placeholder="用户名">
                            </div>
                            <div class="form-group">
                                <input type="email" name="uemail" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="电子邮箱">
                            </div>
                            <div class="form-group">
                                <select class="form-control form-control-lg" id="exampleFormControlSelect2" name="utype">
                                    <option>用户类型</option>
                                    <option value="1">管理员</option>
                                    <option value="2">教师</option>
                                    <option value="3">学生</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="upsw" name="upsw" class="form-control form-control-lg" id="exampleInputupsw1" placeholder="密码">
                            </div>
                            <div class="mb-4">
                                <div class="form-check">
                                    <label class="form-check-label text-muted">
                                        <input type="checkbox" class="form-check-input">
                                        我同意所有条款和条件
                                    </label>
                                </div>
                            </div>
                            <div class="mt-3">
                                <button class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" type="submit">注册</button>
                            </div>
                            <div class="text-center mt-4 font-weight-light">
                                已有帐户？ <a href="login.jsp" class="text-primary">点击登录</a>
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
