<%-- 
    Document   : createTrainer
    Created on : 19 Ιουν 2020, 4:24:23 μμ
    Author     : ELIZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="springform" uri="http://www.springframework.org/tags/form"%>
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
        <title>Create Trainer</title>
    </head>

    <body>

        <!-- Sticky navbar -->
        <header>
            <%@include file="header.jsp"%>
        </header>

        <div class="card col-lg-6 offset-lg-3">
            <springform:form action="createTrainer" method="post" modelAttribute="newTrainer" cssClass="needs-validation" novalidate="true">
                <div class="card-header text-center text-white bg-info rounded">
                    <h5>Create Trainer</h5>
                </div>
                <div class="card-body text-center">


                    <div class="form-row mb-4">
                        <div class="col-md-6 md-3">
                            <label for="firstNameT1">First name*</label>
                            <springform:input path="firstName" type="text" cssClass="form-control" id="firstNameT1" maxlength="25" placeholder="First name"
                                              pattern="[A-Za-z]{1,25}" required="true"/>
                            <springform:errors path="firstName" cssClass="error"/>
                            <div class="valid-tooltip">
                                Looks good!
                            </div>
                            <div class="invalid-tooltip">
                                Please add a name up to 25 characters.
                            </div>
                        </div>
                        <div class="col-md-6 md-3">
                            <label for="lastNameT1">Last name*</label>
                            <springform:input path="lastName"  cssClass="form-control" id="lastNameT1" maxlength="25" placeholder="Last name"
                                              pattern="[A-Za-z]{1,25}" required="true"/>
                             <springform:errors path="lastName" cssClass="error"/>
                            <div class="valid-tooltip">
                                Looks good!
                            </div>
                            <div class="invalid-tooltip">
                                Please add a last name up to 25 characters.
                            </div>
                        </div>
                    </div>

                    <div class="form-row mb-5">
                        <div class="form-group col-md-6 md-3">
                            <label for="subject1">Subject*</label>
                            <springform:select path="subject" class="form-control" id="subject1" required="true">
                                <option></option>
                                <option>Java</option>
                                <option>C#</option>
                                <option>Front-End</option>
                                <option>Database</option>
                            </springform:select>
                            <div class="valid-tooltip">
                                Looks good!
                            </div>
                            <div class="invalid-tooltip">
                                Please select a subject.
                            </div>
                        </div>
                    </div>

                    <div class="form-row mb-3">
                        <div class="form-group ml-2">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="terms4" required>
                                <label class="form-check-label" for="terms4">
                                    Agree to terms and conditions
                                </label>
                                <div class="invalid-tooltip">
                                    You must agree before submitting.
                                </div>
                            </div>
                        </div>
                    </div>

                    <button class="btn btn-info submit mb-5" type="submit">
                        <h6>Submit</h6>
                    </button>
                </div>
            </springform:form>

        </div>


        <%@include file="footer.jsp"%>

        <script src="/validations.js" type="text/javascript"></script>

    </body>
</html>