<%-- 
    Document   : ImageJSP
    Created on : May 8, 2021, 1:12:07 PM
    Author     : Chels
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Image Repository</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    </head>
    <body class="bg-dark">
       <div class="container">
            <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
                <div class="container-fluid">
                    <a class="navbar-brand" href="home">Image Repository</a>
                    <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navcol-1">
                        <ul class="navbar-nav">
                            <li class="nav-item"><a class="nav-link active" href="home">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="addimage">Add Image</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
           <br>
         
            <div class="row mb-3">
                <div class="col ">
                    <div class="card" style="background-color: #e3f2fd;">
                        <div class="card-body">
                            <h4 class="card-title">Images</h4>
                            <div class="row">
                                <c:forEach items="${images}" var="images">
                                <div class="col-4 text-center">
                                    <a href="<c:out value="${images.getUrl()}" />">
                                        <figure class="figure">
                                            <img class="img-fluid figure-img" src="<c:out value="${images.getUrl()}" />">
                                            <figcaption class="figure-caption">
                                                <c:out value="${images.getTitle()}" />
                                            </figcaption>
                                        </figure>
                                    </a>
                                </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.bundle.min.js"></script>
    </body>
    </body>
</html>
