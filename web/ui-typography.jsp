

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/ui-typography.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:42 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Responsive Bootstrap 4 Admin Dashboard Template</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="https://templates.iqonic.design/posdash/html/assets/images/favicon.ico" />
        <link rel="stylesheet" href="../assets/css/backend-plugin.min.css">
        <link rel="stylesheet" href="../assets/css/backende209.css?v=1.0.0">
        <link rel="stylesheet" href="../assets/vendor/%40fortawesome/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="../assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" href="../assets/vendor/remixicon/fonts/remixicon.css">  </head>
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
            </div>      <div class="content-page">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Display headings</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Traditional heading elements are designed to work best in the meat of your page content. When you need a heading to stand out, consider using a <strong>display heading</strong>?a larger, slightly more opinionated heading style. Keep in mind these headings are not responsive by default, but it?s possible to enable <a href="https://getbootstrap.com/" target="_blank">responsive font sizes</a>.</p>
                                    <h1 class="display-1">Display headings</h1>
                                    <h1 class="display-2">Display headings</h1>
                                    <h1 class="display-3">Display headings</h1>
                                    <h1 class="display-4">Display headings</h1>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Typography</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>All HTML headings, <code>&lt;h1&gt;</code> through <code>&lt;h6&gt;</code>, are available.</p>
                                    <h1>h1. Bootstrap heading</h1>
                                    <h2>h2. Bootstrap heading</h2>
                                    <h3>h3. Bootstrap heading</h3>
                                    <h4>h4. Bootstrap heading</h4>
                                    <h5>h5. Bootstrap heading</h5>
                                    <h6 class="mb-0">h6. Bootstrap heading</h6>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Inline text elements</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Styling for common inline HTML5 elements.</p>
                                    <p>You can use the mark tag to <mark>highlight</mark> text.</p>
                                    <p><del>This line of text is meant to be treated as deleted text.</del></p>
                                    <p><s>This line of text is meant to be treated as no longer accurate.</s></p>
                                    <p><ins>This line of text is meant to be treated as an addition to the document.</ins></p>
                                    <p><u>This line of text will render as underlined</u></p>
                                    <p><small>This line of text is meant to be treated as fine print.</small></p>
                                    <p><strong>This line rendered as bold text.</strong></p>
                                    <p><em>This line rendered as italicized text.</em></p>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Lists Inline</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Remove a list?s bullets and apply some light <code>margin</code> with a combination of two classes, <code>.list-inline</code> and <code>.list-inline-item</code>.</p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">Lorem ipsum</li>
                                        <li class="list-inline-item">Phasellus iaculis</li>
                                        <li class="list-inline-item">Nulla volutpat</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Headings</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p><code>.h1</code> through <code>.h6</code> classes are also available, for when you want to match the font styling of a heading but cannot use the associated HTML element.</p>
                                    <p class="h1 mb-3">h1. Bootstrap heading</p>
                                    <p class="h2 mb-3">h2. Bootstrap heading</p>
                                    <p class="h3 mb-3">h3. Bootstrap heading</p>
                                    <p class="h4 mb-3">h4. Bootstrap heading</p>
                                    <p class="h5 mb-3">h5. Bootstrap heading</p>
                                    <p class="h6 mb-0">h6. Bootstrap heading</p>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Lists Unstyled</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Remove the default <code>list-style</code> and left margin on list items (immediate children only). <strong>This only applies to immediate children list items</strong>, meaning you will need to add the class for any nested lists as well.</p>
                                    <ul class="list-unstyled">
                                        <li>Lorem ipsum dolor sit amet</li>
                                        <li>Consectetur adipiscing elit</li>
                                        <li>Integer molestie lorem at massa</li>
                                        <li>Facilisis in pretium nisl aliquet</li>
                                        <li>
                                            Nulla volutpat aliquam velit
                                            <ul>
                                                <li>Phasellus iaculis neque</li>
                                                <li>Purus sodales ultricies</li>
                                                <li>Vestibulum laoreet porttitor sem</li>
                                                <li>Ac tristique libero volutpat at</li>
                                            </ul>
                                        </li>
                                        <li>Faucibus porta lacus fringilla vel</li>
                                        <li>Aenean sit amet erat nunc</li>
                                        <li>Eget porttitor lorem</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Blockquotes</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>For quoting blocks of content from another source within your document. Wrap <code>&lt;blockquote class="blockquote"&gt;</code> around any <abbr title="HyperText Markup Language">HTML</abbr> as the quote.</p>
                                    <blockquote class="blockquote">
                                        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                                        <footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite></footer>
                                    </blockquote>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Description list alignment</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Align terms and descriptions horizontally by using our grid system?s predefined classes (or semantic mixins). For longer terms, you can optionally add a <code>.text-truncate</code> class to truncate the text with an ellipsis.</p>
                                    <dl class="row">
                                        <dt class="col-sm-3">Description lists</dt>
                                        <dd class="col-sm-9">A description list is perfect for defining terms.</dd>
                                        <dt class="col-sm-3">Euismod</dt>
                                        <dd class="col-sm-9">
                                            <p>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</p>
                                            <p>Donec id elit non mi porta gravida at eget metus.</p>
                                        </dd>
                                        <dt class="col-sm-3">Malesuada porta</dt>
                                        <dd class="col-sm-9">Etiam porta sem malesuada magna mollis euismod.</dd>
                                        <dt class="col-sm-3 text-truncate">Truncated term is truncated</dt>
                                        <dd class="col-sm-9">Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
                                        <dt class="col-sm-3">Nesting</dt>
                                        <dd class="col-sm-9">
                                            <dl class="row">
                                                <dt class="col-sm-4">Nested definition list</dt>
                                                <dd class="col-sm-8">Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc.</dd>
                                            </dl>
                                        </dd>
                                    </dl>
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
        <script src="../assets/js/backend-bundle.min.js"></script>

        <!-- Table Treeview JavaScript -->
        <script src="../assets/js/table-treeview.js"></script>

        <!-- Chart Custom JavaScript -->
        <script src="../assets/js/customizer.js"></script>

        <!-- Chart Custom JavaScript -->
        <script async src="../assets/js/chart-custom.js"></script>

        <!-- app JavaScript -->
        <script src="../assets/js/app.js"></script>
    </body>

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/ui-typography.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:42 GMT -->
</html>