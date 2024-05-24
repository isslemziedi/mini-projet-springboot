<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- payment card -->
<div class="card payment-card" style="display: none;">
    <div class="card-header">
        <i class="fa-solid fa-money-bill-transfer me-2" aria-hidden="true"></i> <b> Make A User To User Transfer </b>
    </div>
    <div class="card-body" >
        <form action="/transact/UserToUserFundTransfer" method="post" class="payment-form">
            <div class="form-group mb-2 ">
                <label for=""> Account Beneficiary</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-signature"></i>
                                </span>
                    </div>
                    <input type="text" class="form-control" name="beneficiary" placeholder="Enter Beneficiary Account Name">
                </div>
            </div>

            <div class="form-group mb-2">
                <label for="">Beneficiary Account Number</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-arrow-up-9-1"></i>
                                </span>
                    </div>
                    <input type="text"  class="form-control" name="account_number" placeholder="Enter Beneficiary Account Number">
                </div>
            </div>
            <!-- start select other user account to transfer from -->
            <div class="form-group mb-2">
                <label for="">Select Account</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-user"></i>
                                </span>
                    </div>
                    <select class="form-control" name="account_id"  id="">
                        <option value="">--Select Account--</option>
                        <c:if test="${requestScope.userAccounts != null}">
                            <c:forEach items="${userAccounts}" var="selectAccount">
                                <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                            </c:forEach>
                        </c:if>
                    </select>
                </div>
            </div>
            <!-- end select other user account to transfer from -->

            <div class="form-group mb-2 ">
                <label for=""> Reference/Reason </label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control mt-3" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-heart-circle-plus"></i>
                                </span>
                    </div>
                    <select name="reference" class="form-control my-3" id="reference-type">
                        <option value="">-- Select Transaction Type --</option>
                        <option value="peer_support"> Peer Support </option>
                        <option value="course_payments">Course Payments</option>
                        <option value="collaborative_projects">Collaborative Projects</option>
                        <option value="gifts_donations">Gifts or Donations</option>
                    </select>
                </div>
            </div>

            <div class="form-group mb-4">
                <label for="">Enter Transfer Amount</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-sack-dollar"></i>
                                </span>
                    </div>
                    <input type="text"  class="form-control" name="payment_amount" placeholder="Enter Transfer Amount">
                </div>
            </div>

            <div class="form-group mb-2">
                <button id="transact-btn" class="btn btn-md"> Transfer </button>
            </div>
        </form>
    </div>
</div>
<!-- end payment card -->