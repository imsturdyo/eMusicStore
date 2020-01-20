<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <br><br>
        <div class="page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register?${_csrf.parameterName}=${_csrf.token}" method="post" commandName="customer" >

        <h3>Basic Info</h3>


        <div class="form-group">
            <label for="name">Name</label><form:errors path="customerName" cssStyle="color:#ff0000" />
            <form:input path="customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label><span style="color: #ff0000">${emailMsg}</span><form:errors path="customerEmail" cssStyle="color:#ff0000" />
            <form:input path="customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="customerPhone" id="phone" class="form-Control"/>
        </div>

        <div class="form-group"><span style="color: #ff0000">${usernameMsg}</span><form:errors path="username" cssStyle="color:#ff0000" />
            <label for="username">Username</label>
            <form:input path="username" id="username" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="password">Password</label><form:errors path="password" cssStyle="color:#ff0000" />
            <form:password path="password" id="password" class="form-Control"/>
        </div>

        <h3>Billing Address</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingDoorNumber">Door Number</label>
            <form:input path="billingAddress.doorNumber" id="billingDoorNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">City Name</label>
            <form:input path="billingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCounty">County</label>
            <form:input path="billingAddress.country" id="billingCounty" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingPostcode">Postcode</label>
            <form:input path="billingAddress.postcode" id="billingPostcode" class="form-Control"/>
        </div>

        <h3>Shipping Address</h3>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingDoorNumber">Door Number</label>
            <form:input path="shippingAddress.doorNumber" id="shippingDoorNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">City Name</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCounty">County</label>
            <form:input path="shippingAddress.country" id="shippingCounty" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingPostcode">Postcode</label>
            <form:input path="shippingAddress.postcode" id="shippingPostcode" class="form-Control"/>
        </div>

        <br><br>

        <input type="submit" value="Submit" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>


        </form:form>

<%@include file="/WEB-INF/views/template/footer.jsp" %>