<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- withdraw card-->
<div class="card completion-card" style="display: none;">
    <div class="card-header">
        <i class="fa fa-square-minus me-2" aria-hidden="true"></i> <b> Make A Withdraw </b>
    </div>
    <div class="card-body">
        <form action="/transact/withdraw" method="post" class="completion-form">

            <div class="form-group mb-2">
                <label for="withdraw-amount">Withdraw Amount</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-sack-dollar"></i>
                                </span>
                    </div>
                    <input type="text"  class="form-control" name="withdraw-amount" placeholder="Enter Withdraw Amount" id="withdraw-amount">
                </div>

            </div>

            <div class="form-group mb-4">
                <label for="">Select Account To Withdraw Funds From</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-user"></i>
                                </span>
                    </div>
                    <select class="form-control" name="account_id"  id="">
                        <option value="">--Select Account To Withdraw Funds From--</option>
                        <c:if test="${requestScope.userAccounts != null}">
                            <c:forEach items="${userAccounts}" var="selectAccount">
                                <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                            </c:forEach>
                        </c:if>
                    </select>
                </div>
            </div>

            <div class="form-group mb-2">
                <button id="transact-btn" class="btn btn-md"> Withdraw </button>
            </div>
        </form>
    </div>
</div>
<!-- end withdraw card -->