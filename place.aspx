<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="place.aspx.cs" Inherits="WebApplication2.place" %>


<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <script>
        function showSuccessMessage() {
            alert("Document saved successfully.");
        }
    </script>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="FStyle.css">
    <!-- Boxicons CDN Link-->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="sidebar">
        <div class="logo-details">
            <i class='bx bxl-c-plus-plus'></i>
            <span class="logo_name">NIKE(FJ9307)</span>
        </div>
        <ul class="nav-links">
            <li>
                <a href="document.aspx">
                    <i class='bx bx-grid-alt'></i>
                    <span class="links_name">Add document details</span>
                </a>
            </li>
            <li>
                <a href="placements.aspx"  class="active">
                    <i class='bx bx-box'></i>
                    <span class="links_name">Add placement details</span>
                </a>
            </li>
            <li>
                <a href="ModelSheet.aspx">
                    <i class='bx bx-list-ul'></i>
                    <span class="links_name">Add Model Sheet</span>
                </a>
            </li>
            <li>
                <a href="withdraw.jsp">
                    <i class='bx bx-pie-chart-alt-2'></i>
                    <span class="links_name">Withdraw</span>
                </a>
            </li>
            <li>
                <a href="report.jsp">
                    <i class='bx bx-coin-stack'></i>
                    <span class="links_name">Generate report</span>
                </a>
            </li>
            <li>
                <a href="queries.jsp">
                    <i class='bx bx-book-alt'></i>
                    <span class="links_name">Queries</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class='bx bx-log-out'></i>
                    <span class="links_name">Log out</span>
                </a>
            </li>
        </ul>
    </div>
    <section class="home-section">
        <nav>
            <div class="sidebar-button">
                <i class='bx bx-menu sidebarBtn'></i>
                <span class="dashboard">Add Placement details</span>
            </div>
        </nav>
        <div class="home-content">
            <div class="sales-boxes">
                <div class="recent-sales1 box">
                    <div class="title">Add Placement details</div>
                    <br />
                    <form id="documentForm" method="post" enctype="multipart/form-data" runat="server">

                        <div class="form-row">
                            <div class="form-group col-md-6">


                                <label for="Cutpanel">Cut Panel:</label>
                                <select id="Cutpanel" name="Cutpanel" class="form-control" required>
                                    <option value="Fabric">Fabric</option>
                                    <option value="Trim">Trim</option>
                                    <option value="Thread">Thread</option>
                                    <option value="Embellishment">Embellishment</option>
                                    <option value="Packaging">Packaging</option>
                                </select>
                            </div>


                            <div class="form-group col-md-6">
                                <label for="MinWidth1">Minimum Usable Width :</label>
                                <input type="text" id="MinWidth1" name="MinWidth1" class="form-control">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="WUOM">Width UOM:</label>
                                <input type="text" id="WUOM" name="WUOM" class="form-control" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="placement">Placement:</label>
                                <input type="text" id="placement" name="placement" class="form-control">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="Product">Product:</label>
                                <input type="text" id="Product" name="Product" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="Comment">Comment:</label>
                                <input type="text" id="Comment" name="Comment" class="form-control">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="muom">Measurement UOM :</label>
                                <input type="text" id="muom" name="muom" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="cwidth">Cuttable Width :</label>
                                <input type="text" id="cwidth" name="cwidth" class="form-control">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="Stripe">Stripe Direction:</label>
                                <input type="text" id="Stripe" name="Stripe" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="stripel">Strip Length:</label>
                                <input type="text" id="stripel" name="stripel" class="form-control">
                            </div>
                        </div>



                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="bindingFold">Binding Folding Type:</label>
                                <input type="text" id="bindingFold" name="bindingFold" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="bindingFinish">Binding Finished Width:</label>
                                <input type="text" id="bindingFinish" name="bindingFinish" class="form-control">
                            </div>
                        </div>



                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="NOSGarment">Number of Strips per Garment:</label>
                                <input type="text" id="NOSGarment" name="NOSGarment" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="GradedCons">Graded Consumption:</label>
                                <input type="text" id="GradedCons" name="GradedCons" class="form-control">
                            </div>
                        </div>

                        <div>
                            <label for="UOM">UOM:</label>
                            <input type="text" id="UOM" name="UOM" class="form-control">
                        </div></br>

                        <button type="submit" class="btn btn-primary d-flex justify-content-center align-items-center">SAVE DETAILS</button>


                    </form>
                    </div>
                </div>
            </div>
    </section>
</body>
</html>
