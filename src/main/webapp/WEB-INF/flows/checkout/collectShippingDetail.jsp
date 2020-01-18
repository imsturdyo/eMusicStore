<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <br><br>
        <div class="page-header">
            <h1>Customer</h1>

            <p class="lead">Customer Details</p>
        </div>

        <form:form commandName="order" class="form-horizontal" >

        <h3>Shipping Address</h3>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingDoorNumber">Door Number</label>
            <form:input path="cart.customer.shippingAddress.doorNumber" id="shippingDoorNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">City Name</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCounty">County</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCounty" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingPostcode">Postcode</label>
            <form:input path="cart.customer.shippingAddress.postcode" id="shippingPostcode" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br><br>

        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>
        <input type="submit" value="Next" class="btn btn-default" name="_eventId_shippingDetailCollected" />
        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>


        </form:form>

<%@include file="/WEB-INF/views/template/footer.jsp" %>