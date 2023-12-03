<%--
  Created by IntelliJ IDEA.
  User: Fine
  Date: 2023/6/24
  Time: 15:04
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>学生信息管理</title>
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
                                        <h2>学生信息管理</h2>
                                    </div>
                                    <div class="d-flex">
                                        <i class="mdi mdi-home text-muted hover-cursor"></i>
                                        <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;班级学员管理&nbsp;/&nbsp;</p>
                                        <p class="text-primary mb-0 hover-cursor">学生信息管理</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-end flex-wrap">
                                    <button type="button" class="btn btn-light bg-white btn-icon mr-3 d-none d-md-block ">
                                        <i class="mdi mdi-download text-muted"></i>
                                    </button>
                                    <button type="button" class="btn btn-light bg-white btn-icon mr-3 mt-2 mt-xl-0">
                                        <i class="mdi mdi-clock-outline text-muted"></i>
                                    </button>
                                    <button type="button" class="btn btn-light bg-white btn-icon mr-3 mt-2 mt-xl-0">
                                        <i class="mdi mdi-plus text-muted"></i>
                                    </button>
                                    <button class="btn btn-primary mt-2 mt-xl-0" data-toggle="modal" data-target="#myModal">上传数据</button>

                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title" id="myModalLabel">添加学生信息</h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                </div>
                                                <div class="card">
                                                    <div class="card-body">
                                                        <form class="forms-sample">
                                                            <div class="form-group row">
                                                                <label for="sname" class="col-sm-3 col-form-label">姓名</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" id="sname" placeholder="请输入姓名">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="sno" class="col-sm-3 col-form-label">学号</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" id="sno" placeholder="请输入学号">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">性别</label>
                                                                <div class="col-sm-9 row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <div class="form-check">
                                                                                <label class="form-check-label border-left">
                                                                                    <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="1" checked>
                                                                                    男
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <div class="form-check">
                                                                                <label class="form-check-label border-right">
                                                                                    <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="2">
                                                                                    女
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="sdept" class="col-sm-3 col-form-label">院系</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" id="sdept" placeholder="请输入院系">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="cname" class="col-sm-3 col-form-label">班级</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" id="cname" placeholder="请输入班级">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="grade" class="col-sm-3 col-form-label">学分绩点</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" id="grade" placeholder="请输入学分绩点">
                                                                </div>
                                                            </div>
                                                            <button type="submit" class="btn btn-primary mr-2">提交</button>
                                                            <button class="btn btn-light">取消</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal -->
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
                                    <div class="table-responsive">
                                        <table id="recent-purchases-listing" class="table text-center">
                                            <thead>
                                            <tr>
                                                <th>姓名</th>
                                                <th>学号</th>
                                                <th>性别</th>
                                                <th>院系</th>
                                                <th>班级</th>
                                                <th>学分绩点</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${listStu}" var="stu">
                                                <tr>
                                                    <td>${stu.sname}</td>
                                                    <td>${stu.sno}</td>
                                                    <td>${stu.ssex == 1 ? "男" : "女"}</td>
                                                    <td>${stu.sdept}</td>
                                                    <td>${stu.cname}</td>
                                                    <td>${stu.grade}</td>
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
