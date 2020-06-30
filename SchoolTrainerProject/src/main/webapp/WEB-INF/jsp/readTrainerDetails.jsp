<%-- 
    Document   : readTrainer
    Created on : 21 Ιουν 2020, 1:11:13 μμ
    Author     : ELIZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="springform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Read Trainer Details</title>
    </head>

    <body>

        <!-- Sticky navbar -->
        <header>
            <%@include file="header.jsp"%>
        </header>

        <div class="card col-lg-6 offset-lg-3">
            <springform:form action="trainerDetails" method="post" modelAttribute="trainer" cssClass="needs-validation" novalidate="true">
                <div class="card-header text-center text-white bg-info rounded">
                    <h5>Trainer Details</h5>
                </div>
                <div class="card-body text-center">

                    <div class="form-row mb-4">
                        <div class="col-md-6 md-3 offset-md-3">
                            <label for="trainer">Choose Trainer</label>
                            <springform:select path="trainerId" class="form-control" id="trainer" required="true">
                                <springform:options items="${trainerList}"/>
                            </springform:select>
                            <div class="valid-tooltip">
                                Looks good!
                            </div>
                            <div class="invalid-tooltip">
                                Please select a trainer.
                            </div>
                        </div>
                    </div>

                    <button class="btn btn-info submit mb-5" type="submit">
                        <h6>Select</h6>
                    </button>
                </div>
            </springform:form>

        </div>


        <%@include file="footer.jsp"%>


    </body>
</html>
