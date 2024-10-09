<%-- 
    Document   : topnavbar
    Created on : Oct 4, 2024, 8:59:57 AM
    Author     : frien
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <div class="iq-top-navbar">
        <div class="iq-navbar-custom">
            <nav class="navbar navbar-expand-lg navbar-light p-0">
                <div class="iq-navbar-logo d-flex align-items-center justify-content-between">
                    <i class="ri-menu-line wrapper-menu"></i>
                    <a href="home.jsp" class="header-logo">
                        <img src="assets/images/logo.png" class="img-fluid rounded-normal" alt="logo">
                        <h5 class="logo-title ml-3">POSDash</h5>

                    </a>
                </div>

                <div class="d-flex align-items-center">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-label="Toggle navigation">
                        <i class="ri-menu-3-line"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto navbar-list align-items-center">
                            <c:if test="${account.getRole_id()==1}">
                                <li>
                                    <a href="register" class="btn border add-btn shadow-none mx-2 d-none d-md-block">
                                        Thêm nhân viên
                                    </a>
                                </li>

                            </c:if>

                            <li class="nav-item nav-icon dropdown caption-content">
                                <a href="#" class="search-toggle dropdown-toggle" id="dropdownMenuButton4"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img src="assets/images/user/1.png" class="img-fluid rounded" alt="user">
                                </a>
                                <div class="iq-sub-dropdown dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <div class="card shadow-none m-0">
                                        <div class="card-body p-0 text-center">
                                            <div class="media-body profile-detail text-center">
                                                <img src="assets/images/page-img/profile-bg.jpg" alt="profile-bg"
                                                     class="rounded-top img-fluid mb-4">
                                                <img src="assets/images/user/1.png" alt="profile-img"
                                                     class="rounded profile-img img-fluid avatar-70">
                                            </div>
                                            <div class="p-3">
                                                <h5 class="mb-1">${account.getEmail()}</h5>
                                                <div class="d-flex align-items-center justify-content-center mt-3">
                                                    <a href="https://templates.iqonic.design/posdash/html/app/user-profile.html" class="btn border mr-2">Profile</a>
                                                    <a href="logout" class="btn border">Sign Out</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</html>
