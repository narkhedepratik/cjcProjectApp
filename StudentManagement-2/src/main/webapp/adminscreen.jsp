<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
	
	<style>
	   .table-container{
	       background-image: url(images/viewstudents.jpeg);
	       height:100vh
	       
	   }
	</style>
  <script type="text/javascript">
  
  function remove()
  {
	 document.fn.action="/remove";
	 document.action.submit();
  }
  
  </script>
</head>
<body>
     <div class="card">
    <nav class="d-flex justify-content-between p-2 border border-primary">
            <img src="images/cjclogo.jpeg" alt="image not found" width="100px" height="50px">
            <div>
            <a href=""><button class="btn btn-success">Enroll Student</button></a>
            <a href="/view"><button class="btn btn-success">View Students</button></a>
            <a href="/"><butto class="btn btn-success"n>Logout</button></a>
            </div>
    </nav>
    </div>
    <section class="vh-100 " style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black " style="border-radius: 25px;">
          <div class="card-body p-md-2">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-3 mx-1 mx-md-4 mt-2">Enroll New Student</p>

                <form class="mx-1 mx-md-4" action="enroll">

                  <div class="d-flex flex-row align-items-center mb-3">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example1c" class="form-control"  name="studentFullName"/>
                      <label class="form-label" for="form3Example1c">Student full name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-3">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="email" id="form3Example3c" class="form-control" name="studentEmail"/>
                      <label class="form-label" for="form3Example3c">Student Email</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-3">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="number" id="form3Example4c" class="form-control"  name="studentAge"/>
                      <label class="form-label" for="form3Example4c">Student Age</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-3">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example4cd" class="form-control" name="studentCollageName" />
                      <label class="form-label" for="form3Example4cd">Student Collage name</label>
                    </div>
                  </div>
                  
                <div class="d-flex justify-content-between">
                  <div class="form-check d-flex justify-content-center mb-3">
                    <input class="form-check-input me-2" type="radio"  id="form2Example3c"  name="studentCourse" value="Java"/>
                    <label class="form-check-label" for="form2Example3">Java</label>
                  </div>
                  <div class="form-check d-flex justify-content-center mb-3">
                    <input class="form-check-input me-2" type="radio"  id="form2Example3c"  name="studentCourse" value="Python"/>
                    <label class="form-check-label" for="form2Example3">Python</label>
                  </div>    <div class="form-check d-flex justify-content-center mb-5">
                    <input class="form-check-input me-2" type="radio" id="form2Example3c"  name="studentCourse" value="Testing"/>
                    <label class="form-check-label" for="form2Example3">Testing</label>
                  </div>    <div class="form-check d-flex justify-content-center mb-5">
                    <input class="form-check-input me-2" type="radio" id="form2Example3c"  name="studentCourse" value="Angular"/>
                    <label class="form-check-label" for="form2Example3">Angular</label>
                  </div>
                </div>  
                
                  <div class="d-flex flex-row align-items-center mb-3">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example4cd" class="form-control" name="batchNumber" />
                      <label class="form-label" for="form3Example4cd">Student Batch Number</label>
                    </div>
                  </div>
                  <div class="mb-3">
                   <select class="form-select" aria-label="Default select example" name="batchMode">
                    <option selected>Select Batch Mode</option>
                    <option value="Online">Online</option>
                    <option value="Offline">Offline</option>
                   </select>
                  </div>
                  
                      <div class="d-flex flex-row align-items-center mb-3">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example4cd" class="form-control" name="feesPaid" />
                      <label class="form-label" for="form3Example4cd">First Installment</label>
                    </div>
                  </div>




                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <button  type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-lg">Register</button>
                  </div>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://www.image.edu.in/images/welcome-img.png"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="table-container" id="view">
<h1 class="text-white text-center"> Students Info....!</h1>
     <form name="fn">
      <table class="table table-hover">
           <thead>
              <tr>
                 <th>Student Id</th>
                 <th>Student Fullname</th>
                 <th>Student Email</th>
                 <th>Student Age</th>
                 <th>Collage Name</th>
                 <th>Student Course</th>
                 <th>Batch No.</th>
                 <th>Batch Mode</th>
                 <th>Fees Paid</th>  
                 <th>Select</th>
                 <th>Actions</th>    
              </tr>
           </thead>
           <tbody>
             <c:forEach items="${data}" var="s">
                <tr>
                   <td>${s.studentId }</td>
                   <td>${s.studentFullName }</td>
                    <td>${s.studentEmail }</td>
                    <td>${s.studentAge }</td>
                    <td>${s.studentCollageName }</td>
                    <td>${s.studentCourse }</td>
                    <td>${s.batchNumber }</td>
                    <td>${s.batchMode }</td>
                    <td>${s.feesPaid }</td>
                    <td>
                      <input type="radio" name="studentId" value="${s.studentId }"> 
                    </td>
                    
                    <td>
                       <div>
                         <button class="btn btn-outline-primary">Fees</button>
                         <button class="btn btn-outline-warning">Batch</button>
                         <button class="btn btn-outline-danger" onClick="remove()" >Remove</button>
                         
                       </div>
                    
                    </td>
                    
                </tr>
             </c:forEach>
           
           </tbody>
      </table>
      </form>

</section>

    
</body>
</html>