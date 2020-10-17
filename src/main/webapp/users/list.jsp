<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ include file="/header.jsp" %><!-- Begin Page Content -->--%>
<%--<div class="container-fluid">  <!-- Page Heading -->--%>
<%--    <div class="d-sm-flex align-items-center justify-content-between mb-4">--%>
<%--        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>--%>
<%--        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i--%>
<%--                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>--%>
<%--    </div>--%>
<%--    <h1>Witam no mojej stronie</h1>>--%>
<%--&lt;%&ndash;    <c:forEach items="${users}" var="user">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${user.id}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${user.userName}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${user.email}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </c:forEach></div>&ndash;%&gt;--%>
<%--<!-- /.container-fluid -->--%>
<%--<%@ include file="/footer.jsp" %>--%>




<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/header.jsp" %>

<div class="container-fluid">


    <!-- Page Heading -->

    <div class="d-sm-flex align-items-center justify-content-between mb-4">

        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>

        <a href="<c:url value="/users/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">

            <i class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>

    </div>

    <div class="card shadow mb-4">

        <div class="card-header py-3">

            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>

        </div>

        <div class="card-body">

            <div class="table-responsive">

                <table class="table">

                    <tr>

                        <th>Id</th>

                        <th>Nazwa użytkownika</th>

                        <th>Email</th>

                        <th>Akcja</th>

                    </tr>

                    <c:forEach items="${users}" var="user">

                        <tr>

                            <td>${user.id}</td>

                            <td>${user.userName}</td>

                            <td>${user.email}</td>

                            <td>

<%--                                <a href='<c:url value="/users/delete?id=${user.id}"/>'>Usuń</a>--%>

<%--                                <a href='<c:url value="/users/edit?id=${user.id}"/>'>Edit</a>--%>

<%--                                <a href='<c:url value="/users/show?id=${user.id}"/>'>Pokaż</a>--%>

                            </td>

                        </tr>

                    </c:forEach>

                </table>

            </div>

        </div>

    </div>

</div>

<!-- /.container-fluid -->

<%@ include file="/footer.jsp" %>





