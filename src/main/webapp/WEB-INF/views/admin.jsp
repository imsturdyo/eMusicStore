<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wraper">
    <div class="container">
        <br><br>
        <div class="page-header">
            <h1>Administrator Page</h1>

            <p class="lead">This is the administrator page!</p>
        </div>

        <form action="<c:url value="/logout" />" method="post" id="logoutForm">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        </form>

        <script>
            function formSubmit() {
                document.getElementById("logoutForm").submit();
            }
        </script>

            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <h2>
                    Welcome: ${pageContext.request.userPrincipal.name} | <a href="javascript:formSubmit()"> Logout</a>
                </h2>
            </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory" />">Product Inventory</a>
        </h3>

        <p>Here you can view, check and modify the product inventory!</p>

        <br><br>

        <h3>
            <a href="<c:url value="/admin/customer" />">Customer Management</a>
        </h3>

        <p>Here you can view the customer information!</p>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
