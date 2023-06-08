<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bulk.aspx.cs" Inherits="WebApplication2.Bulk" %>





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
                <a href="ModelSheet.aspx" >
                    <i class='bx bx-list-ul'></i>
                    <span class="links_name">Add Model sheet</span>
                </a>
            </li>
            <li>
                <a href="Bulk.aspx" class="active">
                    <i class='bx bx-pie-chart-alt-2'></i>
                    <span class="links_name">Bulk Style Briefing<br /> Summary</span>
                </a>
            </li>
            
        </ul>
    </div>
    <section class="home-section">
        <nav>
            <div class="sidebar-button">
                <i class='bx bx-menu sidebarBtn'></i>
                <span class="dashboard">Bulk Style Briefing Summary FJ9307- FJ9308AS- FN1445EXT</span>
            </div>
        </nav>
        <div class="home-content">
            <div class="sales-boxes">
                <div class="recent-sales1 box">
                    <div class="title">Add Bulk Style Briefing Summary details</div>
                    <br />
                    <form id="documentForm" method="post" enctype="multipart/form-data" runat="server">

                        
                        <div>
                            <label for="SpecItem">Spec Item :</label>
                            <textarea type="text" id="SpecItem" name="SpecItem" class="form-control"></textarea>
                        </div>
                        <div>
                            <label for="Comment">Comment :</label>
                            <textarea type="text" id="Comment" name="Comment" class="form-control"></textarea>
                        </div>


                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="Who">Who :</label>
                                <input type="text" id="Who" name="Who" class="form-control" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="What">What:</label>
                                <input type="text" id="What" name="What" class="form-control">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="When">When :</label>
                                <input type="date" id="When" name="When" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="ActionCreated">Action Created/Modified On :</label>
                                <input type="datetime-local" id="ActionCreated" name="ActionCreated" class="form-control">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="Image">Image :</label>
                                <input type="file" id="Image" name="Image" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="CompletionStatus">Completion Status :</label>
                                <input type="text" id="CompletionStatus" name="CompletionStatus" class="form-control">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="ComComment">Completion Comment :</label>
                                <input type="text" id="ComComment" name="ComComment" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="StatusBy">Status Modified By :</label>
                                <input type="text" id="StatusBy" name="StatusBy" class="form-control">
                            </div>
                        </div>


                         <div>
                            <label for="StatusOn">Status Modified On :</label>
                            <input type="date" id="StatusOn" name="StatusOn" class="form-control">
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

