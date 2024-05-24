<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- Container: No Accounts -->
<div class="container">
    <!-- card: no account -->
    <div class="card no-accounts-card">
        <div class="card-body">
            <h3 class="card-title">
                <i class="fa fa-circle-exclamation" style="color: #edcba9;"></i> No Registered Accounts
            </h3>
            <hr>
            <div class="card-text">
                You currently do not have any registered accounts.<br>
                Please click below to register / add a new account .
            </div>
            <br>
            <!-- account button -->
            <button id="account-btn" class="btn" style="background-color: #869faf; color: white;" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                <i class="fa fa-address-card"></i>  Add new account
            </button>
        </div>
    </div>
    <!-- end of card: no account -->
</div>
