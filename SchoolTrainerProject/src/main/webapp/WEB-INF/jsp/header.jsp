<%-- 
    Document   : header
    Created on : 21 Ιουν 2020, 1:17:38 μμ
    Author     : ELIZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-light my-3 bg-info sticky-top ">
    <a href="/index" class="offset-none offset-lg-1 navbar-brand text-white">
        <img src="/photos/logo.png" width="30" height="30" class="d-inline-block align-top" alt="brand icon" />
        Private School</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" aria-control="navbar1"
            data-target="#navbar1" aria-label="toggle navigation" aria-expanded="false">
        <span cssClass="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse offset-xl-2 offset-lg-1 offset-none " id="navbar1">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a href="/index" class="nav-link text-white">Home</a>
            </li>
            <li class="nav-item">
                <a href="/#aboutus" class="nav-link text-white">About us</a>
            </li>


            <li class="nav-item dropdown">
                <a href="" class="nav-link dropdown-toggle text-white" id="dropdown2"
                   data-toggle="dropdown">Trainers</a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="/createTrainer">Create Trainer</a>
                    <a class="dropdown-item" href="/trainerDetails">Read/Update Details</a>
                    <a class="dropdown-item" href="/deleteTrainer">Delete Trainer</a>
                </div>
            </li>

        </ul>
    </div>

