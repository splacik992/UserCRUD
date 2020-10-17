<%--
  Created by IntelliJ IDEA.
  User: rafal
  Date: 17.10.2020
  Time: 17:49
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

            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>

        </div>

        <div class="card-body">

            <div class="table-responsive">

                <table class="table">

                    <td>Nazwa użytkownika</td>

                    <td>Hasło</td>

                    <td>Email</td>


                    <tr>
                        <form method="post">
                            <td>
                                <label>
                                    <input type="text" name="name">
                                </label>
                            </td>

                            <td>
                                <label>
                                    <input type="password" name="password">
                                </label>
                            </td>
                            <td>
                                <label>
                                    <input type="email" name="email">
                                </label>
                            </td>
                            <td>
                                <div class="d-sm-flex align-items-center justify-content-center ">
                                    <label>
                                        <button type="submit" name="submit" class="btn btn-outline-primary">Akceptuj
                                        </button>
                                    </label>
                                </div>
                            </td>
                        </form>
                    </tr>
                </table>

            </div>

        </div>

    </div>

</div>

<!-- /.container-fluid -->

<%@ include file="/footer.jsp" %>





