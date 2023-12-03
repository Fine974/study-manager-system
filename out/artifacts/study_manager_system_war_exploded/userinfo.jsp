<%--
  Created by IntelliJ IDEA.
  User: Fine
  Date: 2023/6/26
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>用户信息管理</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
  <div class="container-scroller">
    <!-- 导航 -->
    <jsp:include page="header.jsp"></jsp:include>

    <!-- 主体部分 -->
    <div class="container-fluid page-body-wrapper">
      <!-- 侧边栏 -->
      <jsp:include page="sidebar.jsp"></jsp:include>
      <!-- 中心内容 -->
      <div class="main-panel">
        <div class="content-wrapper">
          <%-- 表头内容 --%>
          <div class="row">
              <div class="col-md-12 grid-margin">
                <div class="d-flex justify-content-between flex-wrap">
                  <div class="d-flex align-items-end flex-wrap">
                    <div class="mr-md-3 mr-xl-5">
                      <h2>用户信息管理</h2>
                    </div>
                    <div class="d-flex">
                      <i class="mdi mdi-home text-muted hover-cursor"></i>
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;后台信息管理&nbsp;/&nbsp;</p>
                      <p class="text-primary mb-0 hover-cursor">用户信息管理</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          <%-- 表格内容 --%>
          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
<%--                  <p class="card-title">用户信息管理</p>--%>
                  <div class="table-responsive">
                    <table id="" class="table table-striped text-center">
                      <thead>
                        <tr>
                          <th>用户名</th>
                          <th>用户邮箱</th>
                          <th>用户密码</th>
                          <th>用户类型</th>
                          <th>操作</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${listUser}" var="user">
                          <tr>
                            <td>${user.uname}</td>
                            <td>${user.uemail}</td>
                            <td>${user.upsw}</td>
                            <td>
                              <c:choose>
                                <c:when test="${user.utype == 1}"> 管理员 </c:when>
                                <c:when test="${user.utype == 2}"> 教师 </c:when>
                                <c:when test="${user.utype == 3}"> 学生 </c:when>
                              </c:choose>
                            </td>
                            <td>
                              <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">修改</button>
                              <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <h4 class="modal-title" id="myModalLabel">修改用户权限</h4>
                                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    </div>
                                    <div class="card">
                                      <div class="card-body">
                                        <form class="forms-sample">
                                          <div class="form-group row">
                                            <label for="sname" class="col-sm-3 col-form-label">用户名</label>
                                            <div class="col-sm-9">
                                              <input type="text" class="form-control" id="sname" placeholder="请输入用户名">
                                            </div>
                                          </div>
                                          <div class="form-group row">
                                            <label for="sno" class="col-sm-3 col-form-label">用户邮箱</label>
                                            <div class="col-sm-9">
                                              <input type="email" class="form-control" id="sno" placeholder="请输入用户邮箱">
                                            </div>
                                          </div>
                                          <div class="form-group row">
                                            <label for="sdept" class="col-sm-3 col-form-label">用户密码</label>
                                            <div class="col-sm-9">
                                              <input type="text" class="form-control" id="sdept" placeholder="请输入用户密码">
                                            </div>
                                          </div>
                                          <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">用户类型</label>
                                            <div class="col-sm-9 row">
                                              <div class="col-md-4">
                                                <div class="form-group">
                                                  <div class="form-check">
                                                    <label class="form-check-label border-left">
                                                      <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="1" checked>
                                                      管理员
                                                    </label>
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="col-md-4">
                                                <div class="form-group">
                                                  <div class="form-check">
                                                    <label class="form-check-label border-right">
                                                      <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="2">
                                                      老师
                                                    </label>
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="col-md-4">
                                                <div class="form-group">
                                                  <div class="form-check">
                                                    <label class="form-check-label border-right">
                                                      <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios3" value="3">
                                                      学生
                                                    </label>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                          <button type="submit" class="btn btn-primary mr-2">修改</button>
                                          <button class="btn btn-light">取消</button>
                                        </form>
                                      </div>
                                    </div>
                                  </div><!-- /.modal-content -->
                                </div><!-- /.modal -->
                              </div>
                              <button type="button" class="btn btn-danger">删除</button>
                            </td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <script>
    // update表单
    function update_info(id)
    {
      var id = id;
      //复杂一点的json的另一种形式
      var value2 = {"user_id":"123456","username":"coolcooldool"};
      // $('input[name=username]').removeAttr("readonly");//去除input元素的readonly属性
      var obj2 = eval(value2);
      // alert(obj2);
      // 赋值
      $("#user_id").val(obj2.user_id);
      $("#user_name").val(obj2.username);
      $("#act").val("edit");

      // 将input元素设置为readonly
      $('#user_id').attr("readonly","readonly")

    }
    // 添加入库操作
    function add_info()
    {
      var form_data = $("#form_data").serialize();
      alert(form_data);

    }
  </script>
  <!-- plugins:js -->
  <script src="vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="vendors/chart.js/Chart.min.js"></script>
  <script src="vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <script src="js/data-table.js"></script>
  <script src="js/jquery.dataTables.js"></script>
  <script src="js/dataTables.bootstrap4.js"></script>
  <!-- End custom js for this page-->
</body>
</html>
