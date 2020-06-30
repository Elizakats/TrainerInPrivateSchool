<%-- 
    Document   : deleteTrainer
    Created on : 21 Ιουν 2020, 8:36:29 μμ
    Author     : ELIZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="springform" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
        <title>Trainer Details</title>
    </head>

    <body>

        <!-- Sticky navbar -->
        <header>
            <%@include file="header.jsp"%>
        </header>

        <div class="card col-lg-6 offset-lg-3">
            <springform:form action="deleteTrainer" method="post" modelAttribute="trainerList" cssClass="needs-validation" novalidate="true">
                <div class="card-header text-center text-white bg-info rounded">
                    <h5>Trainers</h5>
                </div>
                <div class="card-body text-center">
                    <table class="table table-striped table-bordered">
                        <thead class="bg-info">
                            <tr class="text-white">
                                <th scope="col">Name</th>
                                <th scope="col">Surname</th>
                                <th scope="col">Subject</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="trainer" items="${trainerList}" >
                                <tr>
                                    <td id="name">${trainer.getFirstName()} </td>
                                    <td id="surname">${trainer.getLastName()} </td>
                                    <td>${trainer.getSubject()} </td>
                                    <td>
                                        <springform:form action="deleteTrainer?selectedTrainer=${trainer.getTrainerId()}"  method="post">
                                            <button class="btn btn-info submit" type="submit">
                                                Delete
                                            </springform:form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </springform:form>
            </div>


            <%@include file="footer.jsp"%>
            <script src="/validations.js" type="text/javascript"></script>

    </body>
</html>
