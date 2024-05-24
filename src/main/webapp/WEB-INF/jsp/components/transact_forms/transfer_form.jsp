<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- transfer card-->
<div class="card refund-card" style="display: none;">
    <div class="card-header">
        <i class="fa fa-arrow-up-from-bracket me-2" aria-hidden="true"></i> <b> Make A Transfer </b>
    </div>
    <div class="card-body">
        <form action="/transact/transfer" method="post" class="refund-form">
            <!-- the account we want to transfer from -->
            <div class="form-group mb-4">
                <label for="">Select Account To Transfer From</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-share-from-square"></i>
                                </span>
                    </div>
                    <select class="form-control" name="transfer_from"  id="">
                        <option value="">--Select Account To Transfer From--</option>
                        <c:if test="${requestScope.userAccounts != null}">
                            <c:forEach items="${userAccounts}" var="selectAccount">
                                <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                            </c:forEach>
                        </c:if>
                    </select>
                </div>
            </div>
            <!-- the account we want to transfer to -->
            <div class="form-group mb-4">
                <label for="transfer_to">Select Account To Transfer To</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-share-from-square"></i>
                                </span>
                    </div>
                    <select class="form-control" name="transfer_to" id="transfer_to">
                        <option value="">--Select Account To Transfer To--</option>
                        <c:if test="${requestScope.userAccounts != null}">
                            <c:forEach items="${userAccounts}" var="selectAccount">
                                <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                            </c:forEach>

                        </c:if>
                    </select>
                </div>
            </div>
            <!-- transfer amount  -->
            <div class="form-group mb-4">
                <label for="transfer_amount">Transfer Amount</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-sack-dollar"></i>
                                </span>
                    </div>
                    <input type="text"  class="form-control" name="transfer_amount" placeholder="Enter Transfer Amount" id="transfer_amount">
                </div>
            </div>
            <!-- transfer button -->
            <div class="form-group mb-2">
                <button id="transact-btn" class="btn btn-md"> Transfer </button>
            </div>

        </form>
    </div>
</div>
<!-- end transfer card -->