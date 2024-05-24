<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- start of transact offcanvas-->
<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title text-black" id="offcanvasExampleLabel" style="font-weight: 800; margin-top: 10px;">Transact</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <br>
    <br>
    <!-- offcanvas :  transact body -->
    <div class="offcanvas-body mt-5" >
        <small class="card-text text-white">Choose an option below to perform a transaction</small>
        <select name="transact-type" class="form-control my-3" id="transact-type">
            <option value="">-- Select Transaction Type --</option>
            <option value="refund">Transfer Transaction</option>
            <option value="enrollment">Enrollment Transaction</option>
            <option value="payment">User To User Transfer Transaction</option>
            <option value="completion">Withdraw Transaction</option>
        </select>
        <!-- Transfer form -->
        <%--
        <%@include file="../components/transact_forms/transfer_form.jsp"%>
        <jsp:include page="../components/transact_forms/transfer_form.jsp" />
        <c:import url="components/transact_forms/transfer_form.jsp"/>
         --%>
        <%@include file="../components/transact_forms/transfer_form.jsp"%>
        <!-- Enrollment form -->
        <%@include file="../components/transact_forms/enrollment_form.jsp"%>
        <!-- UserToUserTransfer form -->
        <%@include file="transact_forms/UserToUserFundTransfer_form.jsp"%>
        <!-- Withdraw form -->
        <%@include file="transact_forms/withdraw_form.jsp"%>

    </div>
</div>
<!-- end of transact offcanvas -->