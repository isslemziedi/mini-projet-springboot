<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- enrollment card-->
<div class="card enrollment-card" style="display: none;">
    <div class="card-header">
        <i class="fa fa-money-check-dollar me-2" aria-hidden="true"></i> <b> Make An Enrollment </b>
    </div>
    <div class="card-body">
        <form action="/transact/enrollment" method="post" class="enrollment-form">
            <div class="form-group mb-2">
                <label for="enrollment-amount">Enrollment Amount</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef ; border-radius: 0;">
                                    <i class="fa fa-arrow-up-wide-short"></i>
                                </span>
                    </div>
                    <input type="text"  class="form-control" name="enrollment-amount" placeholder="Enter Enrollment Amount" id="enrollment-amount">
                </div>

            </div>

            <div class="form-group mb-4">
                <label for="">Select Account To Enroll Funds Into</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef ; border-radius: 0;">
                                    <i class="fa fa-inbox"></i>
                                </span>
                    </div>
                    <select class="form-control" name="account_id"  id="">
                        <option value="">--Select Account To Enroll Funds Into--</option>
                        <c:if test="${requestScope.userAccounts != null}">
                            <c:forEach items="${userAccounts}" var="selectAccount">
                                <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                            </c:forEach>

                        </c:if>
                    </select>
                </div>
            </div>

            <div class="form-group mb-2">
                <button id="transact-btn" class="btn btn-md"> Enroll </button>
            </div>
        </form>
    </div>
</div>
<!-- end enrollment card -->