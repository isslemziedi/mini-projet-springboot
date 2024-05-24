<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>


<!-- start of right offcanvas : accounts form  -->
<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
    <div class="offcanvas-header">
        <h5 class="text-black" id="offcanvasRightLabel" style="font-weight: 800; margin-top: 1px;">Create an<br>Account </h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <br>
    <br>
    <div class="offcanvas-body mt-5">
        <!-- card account form-->
        <div class="card">
            <div class="card-header">
                <i class="fa fa-user me-2" aria-hidden="true"></i> <b> Create An Account </b>
            </div>
            <div class="card-body">
                <form action="/account/create_account" method="post" class="add-account-form">
                    <div class="form-group mb-3">
                        <label for="">Enter Account Name </label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-signature"></i>
                                </span>
                            </div>
                            <input type="text" name="account_name" class="form-control" placeholder="Enter Account Name">
                        </div>
                    </div>

                    <div class="form-group mb-3">
                        <label for="">Select Account Type </label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="form-control" style="background-color: #efefef" style="border-radius: 0;">
                                    <i class="fa fa-layer-group"></i>
                                </span>
                            </div>
                            <select name="account_type" class="form-control" id="">
                                <option value="">-- Select Account Type --</option>
                                <option value="employee">Employee Account</option>
                                <option value="student">Student Account</option>
                                <option value="intern">Intern Account</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group mb-3">
                        <button id="account-btn" class="btn btn-md"> Add Account </button>
                    </div>

                </form>
            </div>
        </div>
        <div>
        </div>
    </div>
</div>
<!-- end of right offcanvas : accounts form -->