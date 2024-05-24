<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- container of default offcanvas -->
<div class="container d-flex">
    <!-- account button -->
    <button id="account-btn" class="btn" style="background-color: #3E6074; color: white;" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
        <i class="fa fa-address-card"></i>  Add new account
    </button>
    <!-- transaction button -->
    <button id ="transact-btn" class="btn ms-auto" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
        <i class="fa fa-money-check"></i>  Transact
    </button>
</div>
<!-- end container of default offcanvas -->

<!-- total accounts balance container -->
<div class="container d-flex py-3">
    <h3 class="me-auto">Total Accounts Balance: </h3>
    <h3 class="ms-auto">
        <c:choose>
            <c:when test="${requestScope.totalBalance != null}">
                <c:out value="${totalBalance}"/>
            </c:when>
            <c:otherwise>
                0.00
            </c:otherwise>
        </c:choose>
    </h3>
</div>
<!-- end of total accounts balance container -->


<!-- container : accordian Menu /Drop Down -->
<div class="container">
    <c:if test="${requestScope.userAccounts != null}">
        <c:forEach items="${requestScope.userAccounts}" var="account">
            <!-- example of accordian  -->
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button" style="background-color: #869faf; color: white;" type="button" data-bs-toggle="collapse" data-bs-target="#flush-${account.account_id}" aria-expanded="true" aria-controls="collapseOne">
                            ${account.account_name}
                        </button>
                    </h2>
                    <div id="flush-${account.account_id}" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <!--start account details list -->
                            <ul class="list-group list-group-flesh">
                                <li class="list-group-item d-flex">Account Name <span class="ms-auto"><b>${account.account_name}</b></span></li>
                                <li class="list-group-item d-flex">Account Number <span class="ms-auto"><b>${account.account_number}</b></span></li>
                                <li class="list-group-item d-flex">Account Type <span class="ms-auto"><b>${account.account_type}</b></span></li>
                                <li class="list-group-item d-flex">Account Balance <span class="ms-auto"><b>${account.balance}</b></span></li>
                                <li class="list-group-item d-flex">Created at <span class="ms-auto"><b>${account.created_at}</b></span></li>
                            </ul>
                            <!--end account details list -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- end of exemple -->
        </c:forEach>
    </c:if>
</div>
<!-- end of container : accordian Menu /Drop Down -->