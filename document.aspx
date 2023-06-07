﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="document.aspx.cs" Inherits="WebApplication2.document" %>

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
      <span class="logo_name">Smart vehicle</span>
    </div>
    <ul class="nav-links">
      <li>
        <a href="dashboardF.jsp">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">Dashboard</span>
        </a>
      </li>
      <li>
        <a href="ph.jsp">
          <i class='bx bx-box'></i>
          <span class="links_name">Payment History</span>
        </a>
      </li>
      <li>
        <a href="Add.jsp" class="active">
          <i class='bx bx-list-ul'></i>
          <span class="links_name">Add</span>
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
        <span class="dashboard">Add Document details</span>
      </div>
    </nav>
    <div class="home-content">
      <div class="sales-boxes">
        <div class="recent-sales1 box">
          <div class="title">Add Document details</div>
          <br/>
          <form  id="documentForm" method="post" enctype="multipart/form-data" runat="server">

                  <div>
        <label for="document">Document:</label>
        <input type="file" id="document" name="document" class="form-control" required>
      </div>
      <div>
        <label for="fileUpload">File:</label>
        <input type="file" id="fileUpload" name="fileUpload" class="form-control">
      </div>
      <div>
        <label for="revision">Revision:</label>
        <input type="text" id="revision" name="revision" class="form-control" required>
      </div>
      <div>
        <label for="imageFile">Image File:</label>
        <input type="file" id="imageFile" name="imageFile" class="form-control">
      </div>
      <div>
        <label for="D3">3D:</label>
        <input type="text" id="D3" name="D3" class="form-control">
      </div>
      <div>
        <label for="parent">Parent:</label>
        <input type="text" id="parent" name="parent" class="form-control">
      </div>
      <div>
        <label for="parentType">Parent Type:</label>
        <input type="text" id="parentType" name="parentType" class="form-control">
      </div>
      <div>
        <label for="latest">Latest Revision:</label>
        <input type="text" id="latest" name="latest" class="form-control">
      </div>
      <div>
        <label for="revisionDate">Revision Date:</label>
        <input type="date" id="revisionDate" name="revisionDate" class="form-control">
      </div>
      <div>
        <label for="link">Link:</label>
        <input type="text" id="link" name="link" class="form-control">
      </div>

      

            <br/>
              
            <button type="submit" Class="btn btn-primary margin-right: 50px">SAVE DETAILS</button>
          </form>
            

        </div>
      </div>
    </div>
  </section>
</body>
   

</html>
