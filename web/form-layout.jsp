

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/form-layout.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Responsive Bootstrap 4 Admin Dashboard Template</title>

        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include> </head>
        <body class="  ">
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
            </div>      
            <div class="content-page">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Basic Form</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-group">
                                            <label for="email">Email address:</label>
                                            <input type="email" class="form-control" id="email1">
                                        </div>
                                        <div class="form-group">
                                            <label for="pwd">Password:</label>
                                            <input type="password" class="form-control" id="pwd">
                                        </div>
                                        <div class="checkbox mb-3">
                                            <label><input type="checkbox"> Remember me</label>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="submit" class="btn bg-danger">Cancel</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Form Grid</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="row">
                                            <div class="col">
                                                <input type="text" class="form-control" placeholder="First name">
                                            </div>
                                            <div class="col">
                                                <input type="text" class="form-control" placeholder="Last name">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Textarea</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1"> textarea</label>
                                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="submit" class="btn bg-danger">Cancel</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Input Telephone</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-group">
                                            <label for="exampleInputphone">Teliphone Input</label>
                                            <input type="tel" class="form-control" id="exampleInputphone" value="1-(555)-555-5555">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="submit" class="btn bg-danger">Cancel</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Input Search</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-group">
                                            <label for="search-text">Search</label>
                                            <input id="search-text" type="search" class="form-control" required="">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="submit" class="btn bg-danger">Cancel</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Input</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-group">
                                            <label for="exampleInputText1">Input Text </label>
                                            <input type="text" class="form-control" id="exampleInputText1" value="Mark Tech"
                                                   placeholder="Enter Name">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Email Input</label>
                                            <input type="email" class="form-control" id="exampleInputEmail2" value="markTech@gmail.com"
                                                   placeholder="Enter Email">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputNumber3">Number Input</label>
                                            <input type="number" class="form-control" id="exampleInputNumber3" value="123456">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword4">Password Input</label>
                                            <input type="password" class="form-control" id="exampleInputPassword4" value="example123"
                                                   placeholder="Enter Password">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="submit" class="btn bg-danger">Cancel</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Input Size</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-group">
                                            <label for="colFormLabelSm">Small</label>
                                            <input type="email" class="form-control form-control-sm" id="colFormLabelSm"
                                                   placeholder="form-control-sm">
                                        </div>
                                        <div class="form-group">
                                            <label for="colFormLabel">Default</label>
                                            <input type="email" class="form-control" id="colFormLabel" placeholder="form-control">
                                        </div>
                                        <div class="form-group mb-0">
                                            <label for="colFormLabelLg" class="pb-0">Large</label>
                                            <input type="email" class="form-control form-control-lg" id="colFormLabelLg"
                                                   placeholder="form-control-lg">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Horizontal Form</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form class="form-horizontal" action="https://templates.iqonic.design/action_page.php">
                                        <div class="form-group row">
                                            <label class="control-label col-sm-3 align-self-center" for="email">Email:</label>
                                            <div class="col-sm-9">
                                                <input type="email" class="form-control" id="email" placeholder="Enter Your  email">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-sm-3 align-self-center" for="pwd1">Password:</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control" id="pwd1" placeholder="Enter Your password">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label><input type="checkbox"> Remember me</label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                            <button type="submit" class="btn bg-danger">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Form row</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-row">
                                            <div class="col">
                                                <input type="text" class="form-control" placeholder="First name">
                                            </div>
                                            <div class="col">
                                                <input type="text" class="form-control" placeholder="Last name">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Input Url</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-group">
                                            <label for="exampleInputurl">Url Input</label>
                                            <input type="url" class="form-control" id="exampleInputurl" value="https://getbootstrap.com/"
                                                   placeholder="Enter Url">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="submit" class="btn bg-danger">Cancel</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Input Range</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-group">
                                            <label for="formControlRange">Range input</label>
                                            <input type="range" class="form-control-range" id="formControlRange">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="submit" class="btn bg-danger">Cancel</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Input Custom Range</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-group">
                                            <label for="customRange1">Range Input</label>
                                            <input type="range" class="custom-range" id="customRange1">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="submit" class="btn bg-danger">Cancel</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Input Choose file</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-group">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="customFile">
                                                <label class="custom-file-label" for="customFile">Choose file</label>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="submit" class="btn bg-danger">Cancel</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Input</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <form>
                                        <div class="form-group">
                                            <label for="exampleInputDisabled5">Disabled Input</label>
                                            <input type="text" class="form-control" id="exampleInputDisabled5" disabled="" value="Mark Tech">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPlaceholder">Placeholder</label>
                                            <input type="text" class="form-control" id="exampleInputPlaceholder"
                                                   placeholder="This is Placeholder">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputReadonly">Readonly</label>
                                            <input type="text" class="form-control" id="exampleInputReadonly" readonly="" value="Mark Tech">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputcolor">Input Color </label>
                                            <input type="color" class="form-control" id="exampleInputcolor" value="#32BDEA">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="submit" class="btn bg-danger">Cancel</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Select Size</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <div class="form-group">
                                        <label>Small</label>
                                        <select class="form-control form-control-sm mb-3">
                                            <option selected="">Open this select menu</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Default</label>
                                        <select class="form-control mb-3">
                                            <option selected="">Open this select menu</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Large</label>
                                        <select class="form-control form-control-lg">
                                            <option selected="">Open this select menu</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>
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
                                <span class="mr-1"><script>document.write(new Date().getFullYear())</script>©</span> <a href="#" class="">POS Dash</a>.
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/form-layout.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
</html>