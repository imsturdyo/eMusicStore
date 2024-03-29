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

                <h3>Basic Info</h3>


                <div class="form-group">
                    <label for="name">Name</label>
                    <form:input path="cart.customer.customerName" id="name" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <form:input path="cart.customer.customerEmail" id="email" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="phone">Phone</label>
                    <form:input path="cart.customer.customerPhone" id="phone" class="form-Control"/>
                </div>

                <h3>Billing Address</h3>

                <div class="form-group">
                    <label for="billingStreet">Street Name</label>
                    <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="billingDoorNumber">Door Number</label>
                    <form:input path="cart.customer.billingAddress.doorNumber" id="billingDoorNumber" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="shippingCity">City Name</label>
                    <form:input path="cart.customer.billingAddress.city" id="shippingCity" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="billingCountry">Country</label>
                    <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="billingPostcode">Postcode</label>
                    <form:input path="cart.customer.billingAddress.postcode" id="billingPostcode" class="form-Control"/>
                </div>

                <input type="hidden" name="_flowExecutionKey" />

                <br><br>

                <input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected" />
                <button class="btn btn-default" name="_eventId_cancel">Cancel</button>


                </form:form>

<%@include file="/WEB-INF/views/template/footer.jsp" %>