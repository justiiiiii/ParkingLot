<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<t:pageTemplate pageTitle="Add Car">
    <h1>Cars</h1>
    <body>
        <form class="needs-validation" novalidate method="post" action="${pageContext.request.contextPath}/AddCar">
            
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="licensePlate">License Plate</label>
                    <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="" value="" required="">
                    <div class="invalid-feedback">
                        License Plate is required
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="parkingSpot">Parking Spot</label>
                    <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="" value="" required="">
                    <div class="invalid-feedback">
                        Parking Spot is required
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="owner">Owner</label>
                    <select class="custom-select d-block w-100" id="owner_id" name="owner_id" required>
                        <option value="">Choose...</option>
                        <c:forEach var="user" items="${users}" varStatus="status">
                            <option value="${user.id}">${user.username}</option>
                        </c:forEach>
                </select>
                    <div class="invalid-feedback">
                        Owner is required
                    </div>
                </div>
            </div>
            
            <button class="btn btn-primary btn-lg btn-block" type="submit">Save</button>      
        </form>
    
        <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
    
    </body>
</t:pageTemplate>
