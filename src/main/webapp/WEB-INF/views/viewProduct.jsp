<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wraper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">Information about table</p>
        </div>

       <div class="container">
           <div class="row">
               <div class="col-md-5">
                   <img src="#" alt="image" sytle="width:100%: height:300px" />
               </div>

               <div class="col-md-5">
                   <h3>${product.productName}</h3>
                   <p>${product.productDescription}</p>
                   <p>
                       <strong>Manufacturer</strong> : ${product.productManufacturer}
                   </p>
                   <p>
                       <strong>Category</strong> : ${product.productCategory}
                   </p>
                   <p>
                       <strong>Condition</strong> : ${product.productCondition}
                   </p>
                   <h4>${product.productPrice} GBP</h4>
               </div>
           </div>
       </div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>