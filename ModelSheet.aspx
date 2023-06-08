<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModelSheet.aspx.cs" Inherits="WebApplication2.ModelSheet" %>



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
                <a href="place.aspx">
                    <i class='bx bx-box'></i>
                    <span class="links_name">Add placement details</span>
                </a>
            </li>
            <li>
                <a href="ModelSheet.aspx" class="active">
                    <i class='bx bx-list-ul'></i>
                    <span class="links_name">Add Model sheet</span>
                </a>
            </li>
            <li>
                <a href="Bulk.aspx">
                    <i class='bx bx-pie-chart-alt-2'></i>
                    <span class="links_name">Bulk Style Briefing <br />Summary</span>
                </a>
            </li>
           
        </ul>
    </div>
    <section class="home-section">
        <nav>
            <div class="sidebar-button">
                <i class='bx bx-menu sidebarBtn'></i>
                <span class="dashboard">Add Model Sheet details</span>
            </div>
        </nav>
        <div class="home-content">
            <div class="sales-boxes">
                <div class="recent-sales1 box">
                    <div class="title">Add Model Sheet details</div>
                    <br />
                    <form id="documentForm" method="post" enctype="multipart/form-data" runat="server">

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="Placment">Fabric Placement :</label>
                                <input type="text" id="Placment" name="Placment" class="form-control" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="CutPanel">Fabric placement cut panel:</label>
                                <input type="text" id="CutPanel" name="CutPanel" class="form-control">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="Image">Image:</label>
                                <input type="file" id="Image" name="Image" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="Description">Description:</label>
                                <input type="text" id="Description" name="Description" class="form-control">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="CutQty">Cut QTY :</label>
                                <input type="text" id="CutQty" name="CutQty" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="Pair">Pair :</label>
                                <input type="text" id="Pair" name="Pair" class="form-control">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="OtherComments">Other Comment:</label>
                                <input type="text" id="OtherComments" name="OtherComments" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="CutWay">Fabric Placement cut way :</label>
                                <input type="text" id="CutWay" name="CutWay" class="form-control">
                            </div>
                        </div>



                        <div>
                            <label for="ManualCutType">Fabric Placement Manual Cut - Type:</label>
                            <input type="text" id="ManualCutType" name="ManualCutType" class="form-control">
                        </div>
                        <div>
                            <label for="ManualCut2">Fabric Placement Manual Cut - 2nd Cutting Requirement :</label>
                            <input type="text" id="ManualCut2" name="ManualCut2" class="form-control">
                        </div>


       
                        </br>

                        <button type="submit" class="btn btn-primary d-flex justify-content-center align-items-center">SAVE DETAILS</button>


                    </form>

                </div>
            </div>
        </div>
    </section>
</body>


</html>
