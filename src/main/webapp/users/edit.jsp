<%--
  Created by IntelliJ IDEA.
  User: rafal
  Date: 17.10.2020
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
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

            <h6 class="m-0 font-weight-bold text-primary">Edycja</h6>


        </div>
        <div class="card sidebar-light shadow m-5">
            <div class="card-header py-3">
                <div class="card-body">
                    <form method="post">
                        <input type="hidden" name="id" value="${user.id}"/>
                        <div class="form-group">
                            <label for="userName"><b>Nazwa</b></label>
                            <input value="${user.userName}" name="name" type="text" class="form-control" id=userName
                                   placeholder="Nazwa użytkownika">
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label>
                            <input value="${user.email}" name="email" type="email" class="form-control" id=email
                                   placeholder="Email">
                        </div>

                        <div class="form-group">
                            <label for="password">Haslo</label>
                            <input value="${user.password}" name="password" type="password" class="form-control" id=password
                                   placeholder="Nowe hasło">
                        </div>

                        <div class="d-sm-flex align-items-center justify-content-center ">
                            <label>
                                <button type="submit" name="submit" class="btn btn-outline-primary">Akceptuj
                                </button>
                            </label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- /.container-fluid -->

<%@ include file="/footer.jsp" %>





