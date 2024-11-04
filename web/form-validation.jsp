

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/form-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Admin</title>

        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include>  </head>
        <body class=" color-light ">
            <!-- loader Start -->
            <div id="loading">
                <div id="loading-center">
                </div>
            </div>
            <!-- loader END -->
            <!-- Wrapper Start -->
            <div class="wrapper">

            <jsp:include page="components/sidebar.jsp"></jsp:include>     
            <jsp:include page="components/topnavbar.jsp"></jsp:include>
            <div class="modal fade" id="new-order" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="popup text-left">
                                <h4 class="mb-3">New Order</h4>
                                <div class="content create-workform bg-body">
                                    <div class="pb-3">
                                        <label class="mb-2">Email</label>
                                        <input type="text" class="form-control" placeholder="Enter Name or Email">
                                    </div>
                                    <div class="col-lg-12 mt-4">
                                        <div class="d-flex flex-wrap align-items-ceter justify-content-center">
                                            <div class="btn btn-primary mr-4" data-dismiss="modal">Cancel</div>
                                            <div class="btn btn-outline-primary" data-dismiss="modal">Create</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>      <div class="content-page">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title"> Default Validation</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <form>
                                        <div class="form-row">
                                            <div class="col-md-6 mb-3">
                                                <label for="validationDefault01">First name</label>
                                                <input type="text" class="form-control" id="validationDefault01" required>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationDefault02">Last name</label>
                                                <input type="text" class="form-control" id="validationDefault02" required>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationDefaultUsername">Username</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="inputGroupPrepend2">@</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationDefault03">City</label>
                                                <input type="text" class="form-control" id="validationDefault03" required>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationDefault04">State</label>
                                                <select class="form-control" id="validationDefault04" required>
                                                    <option selected disabled value="">Choose...</option>
                                                    <option>...</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationDefault05">Zip</label>
                                                <input type="text" class="form-control" id="validationDefault05" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                                                <label class="form-check-label" for="invalidCheck2">
                                                    Agree to terms and conditions
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <button class="btn btn-primary" type="submit">Submit form</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title"> Supported elements</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <form class="was-validated">
                                        <div class="mb-3">
                                            <label for="validationTextarea">Textarea</label>
                                            <textarea class="form-control is-invalid" id="validationTextarea" placeholder="Required example textarea" required></textarea>
                                            <div class="invalid-feedback">
                                                Please enter a message in the textarea.
                                            </div>
                                        </div>
                                        <div class="custom-control custom-checkbox mb-3">
                                            <input type="checkbox" class="custom-control-input" id="customControlValidation1" required>
                                            <label class="custom-control-label" for="customControlValidation1">Check this custom checkbox</label>
                                            <div class="invalid-feedback">Example invalid feedback text</div>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" class="custom-control-input" id="customControlValidation2" name="radio-stacked" required>
                                            <label class="custom-control-label" for="customControlValidation2">Toggle this custom radio</label>
                                        </div>
                                        <div class="custom-control custom-radio mb-3">
                                            <input type="radio" class="custom-control-input" id="customControlValidation3" name="radio-stacked" required>
                                            <label class="custom-control-label" for="customControlValidation3">Or toggle this other custom radio</label>
                                            <div class="invalid-feedback">More example invalid feedback text</div>
                                        </div>
                                        <div class="form-group">
                                            <select class="custom-select" required>
                                                <option value="">Open this select menu</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                            <div class="invalid-feedback">Example invalid custom select feedback</div>
                                        </div>
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="validatedCustomFile" required>
                                            <label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
                                            <div class="invalid-feedback">Example invalid custom file feedback</div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Custom Validation</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <form class="needs-validation" novalidate>
                                        <div class="form-row">
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom01">First name</label>
                                                <input type="text" class="form-control" id="validationCustom01"  required>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom02">Last name</label>
                                                <input type="text" class="form-control" id="validationCustom02"  required>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustomUsername">Username</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required>
                                                    <div class="invalid-feedback">
                                                        Please choose a username.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom03">City</label>
                                                <input type="text" class="form-control" id="validationCustom03" required>
                                                <div class="invalid-feedback">
                                                    Please provide a valid city.
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom04">State</label>
                                                <select class="form-control" id="validationCustom04" required>
                                                    <option selected disabled value="">Choose...</option>
                                                    <option>...</option>
                                                </select>
                                                <div class="invalid-feedback">
                                                    Please select a valid state.
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom05">Zip</label>
                                                <input type="text" class="form-control" id="validationCustom05" required>
                                                <div class="invalid-feedback">
                                                    Please provide a valid zip.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                                                <label class="form-check-label" for="invalidCheck">
                                                    Agree to terms and conditions
                                                </label>
                                                <div class="invalid-feedback">
                                                    You must agree before submitting.
                                                </div>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary" type="submit">Submit form</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Tooltips</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <form class="needs-validation" novalidate>
                                        <div class="form-row">
                                            <div class="col-md-6 mb-3">
                                                <label for="validationTooltip01">First name</label>
                                                <input type="text" class="form-control" id="validationTooltip01" value="Mark" required>
                                                <div class="valid-tooltip">
                                                    Looks good!
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationTooltip02">Last name</label>
                                                <input type="text" class="form-control" id="validationTooltip02" value="Tech" required>
                                                <div class="valid-tooltip">
                                                    Looks good!
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationTooltipUsername">Username</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="validationTooltipUsernamePrepend">@</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="validationTooltipUsername" aria-describedby="validationTooltipUsernamePrepend" required>
                                                    <div class="invalid-tooltip">
                                                        Please choose a unique and valid username.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationTooltip03">City</label>
                                                <input type="text" class="form-control" id="validationTooltip03" required>
                                                <div class="invalid-tooltip">
                                                    Please provide a valid city.
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationTooltip04">State</label>
                                                <select class="form-control" id="validationTooltip04" required>
                                                    <option selected disabled value="">Choose...</option>
                                                    <option>...</option>
                                                </select>
                                                <div class="invalid-tooltip">
                                                    Please select a valid state.
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationTooltip05">Zip</label>
                                                <input type="text" class="form-control" id="validationTooltip05" required>
                                                <div class="invalid-tooltip">
                                                    Please provide a valid zip.
                                                </div>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary" type="submit">Submit form</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Wrapper End-->
        <footer class="iq-footer">
            <div class="container-fluid">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
                                    <li class="list-inline-item"><a href="terms-of-service.html">Terms of Use</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-6 text-right">
                                <span class="mr-1"><script>document.write(new Date().getFullYear())</script>©</span> <a href="#" class="">POS Admin</a>.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Backend Bundle JavaScript -->
        <script src="assets/js/backend-bundle.min.js"></script>

        <!-- Table Treeview JavaScript -->
        <script src="assets/js/table-treeview.js"></script>

        <!-- Chart Custom JavaScript -->
        <script src="assets/js/customizer.js"></script>

        <!-- Chart Custom JavaScript -->
        <script async src="assets/js/chart-custom.js"></script>

        <!-- app JavaScript -->
        <script src="assets/js/app.js"></script>
    </body>

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/form-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
</html>