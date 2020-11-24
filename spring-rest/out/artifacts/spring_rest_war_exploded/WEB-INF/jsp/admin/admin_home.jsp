<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />--%>
<%--<fmt:setLocale value="${language}"/>--%>
<%--<fmt:setBundle basename="messages"/>--%>
<%--<html lang="${language}">--%>
<%--<head>--%>
<%--    <link rel="icon" type="image/png" href="<c:url value="/resources/img/icons/favicon.ico"/>">--%>
<%--    <script src="<c:url value="/resources/js/jquery-3.4.1.js"/>"></script>--%>
<%--    <link rel="stylesheet" href="<c:url value="/resources/css/admin_style.css"/>">--%>
<%--    <title><fmt:message key="main.page.welcomtitle"/></title>--%>
<%--</head>--%>
<%--<body>--%>
<%--    <header class="header">--%>
<%--    <div class="wrapper">--%>
<%--        <div class="header-row">--%>
<%--            <div class="logo">--%>
<%--                <a class="site-logo" href="<c:url value="/WEB-INF/jsp/admin/admin_home.jsp"/>">--%>
<%--                    <img src="<c:url value="/resources/img/logo-bsu-enrollee.png"/>" alt="logo"/>--%>
<%--                </a>--%>
<%--            </div>--%>
<%--            <div class="user-description">--%>
<%--                <div class="username"><c:out value="${requestScope.userFirstName}"/> <c:out value="${requestScope.userLastName}"/></div>--%>
<%--                <div class="role"><c:out value="${requestScope.userRole}"/></div>--%>
<%--            </div>--%>
<%--            <div class="logout">--%>
<%--                <form name="logoutForm" method="POST" action="controller">--%>
<%--                    <input type="hidden" name="command" value="logout">--%>
<%--                    <button class="logout-btn">--%>
<%--                        <fmt:message key="main.page.logout"/>--%>
<%--                    </button>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</header>--%>
<%--    <div class="container">--%>
<%--        <div class="faculties-info">--%>
<%--            <form id="selectEnrolleesByFacultyForm" method="POST" action="controller">--%>
<%--                <input type="hidden" name="command" value="enrollees_By_Faculty"/>--%>
<%--                <input type="hidden" name="userFirstName" value="${requestScope.userFirstName}">--%>
<%--                <input type="hidden" name="userLastName" value="${requestScope.userLastName}">--%>
<%--                <input type="hidden" name="userRole" value="${requestScope.userRole}">--%>
<%--                <ul class="faculties">--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-bio.jpg"/>" alt="faculty-bio"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.bio"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.bio"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-history.png"/>" alt="faculty-history"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.his"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.his"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-caharov.jpg"/>" alt="faculty-caharov"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.ecolog"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.ecolog"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-mmf.jpg"/>" alt="faculty-mmf"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.mmf"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.mmf"/>">--%>
<%--                                        <fmt:message key="enrollees.list.button"/>--%>
<%--                                    </button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-geo.png"/>" alt="faculty-geo"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.geo"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.geo"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-journ.jpg"/>" alt="faculty-journ"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.journ"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.journ"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-intern.jpg"/>" alt="faculty-intern"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.inter_relationship"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.inter_relationship"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-fami.jpg"/>" alt="faculty-fami"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.fami"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.fami"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-radiophys.png"/>" alt="faculty-radiophys"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.radiophys"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.radiophys"/>">--%>
<%--                                        <fmt:message key="enrollees.list.button"/>--%>
<%--                                    </button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-philosophy.jpg"/>" alt="faculty-philosophy"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.philo_social"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.philo_social"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-physics.jpg"/>" alt="faculty-physics"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.physics"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.physics"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-philology.jpg"/>" alt="faculty-philology"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.philol"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.philol"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-chem.jpg"/>" alt="faculty-chem"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.chem"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.chem"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-economy.png"/>" alt="faculty-"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.econom"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.econom"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="faculty">--%>
<%--                            <div class="faculty-info-img">--%>
<%--                                <div class="faculty-img img-config">--%>
<%--                                    <img src="<c:url value="/resources/img/faculties/faculty-law.jpg"/>" alt="faculty-law"/>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-title faculty-name"><fmt:message key="faculty.law"/></div>--%>
<%--                                </div>--%>
<%--                                <div class="faculty-info-row">--%>
<%--                                    <div class="faculty-info-row-description">--%>
<%--                                        <button type="submit" name="enrollee-faculty" class="btn faculty-info-row-description" value="<fmt:message key="faculty.law"/>">--%>
<%--                                            <fmt:message key="enrollees.list.button"/>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </form>--%>

<%--        </div>--%>
<%--    </div>--%>
<%--    <footer>--%>
<%--        <div class="bottom-footer">--%>
<%--            <div class="copyright"><fmt:message key="page.copyright"/> &#169; <script src="<c:url value="/resources/js/year.js"/>"></script>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </footer>--%>
<%--</body>--%>
<%--</html>--%>