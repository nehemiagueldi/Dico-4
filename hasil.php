<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap.min.css">
	<link href="style.css" rel="stylesheet">
    <script src="bootstrap.min.js"></script>
    <title>DIAGNOSA COVID-19</title>
  </head>
  <body>

  <div class="container-fluid sticky-top bg-white shadow-sm">
    <div class="container">
      <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0">
        <a href="" class="navbar-brand">
          <h1 class="m-0 text-uppercase text-primary"><i class="fa fa-clinic-medical me-2"></i>DICO-4</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <div class="navbar-nav ms-auto py-0">
            <a href="home.php" class="nav-item nav-link">Home</a>
            <a href="aboutus.php" class="nav-item nav-link active">About Us</a>
            <a href="pil_gejala.php" class="nav-item nav-link">Covid-19 Diagnosis</a>
            <!-- <a href="" class="nav-item nav-link">Service</a>
                  <a href="" class="nav-item nav-link">Pricing</a> -->
            <!-- <div class="nav-item dropdown">
                     <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                     <div class="dropdown-menu m-0">
                        <a href="" class="dropdown-item">Blog Grid</a>
                        <a href="" class="dropdown-item">Blog Detail</a>
                        <a href="" class="dropdown-item">The Team</a>
                        <a href="" class="dropdown-item">Testimonial</a>
                        <a href="" class="dropdown-item">Appointment</a>
                        <a href="" class="dropdown-item">Search</a>
                     </div>
                  </div>
                  <a href="" class="nav-item nav-link">Contact</a> -->
          </div>
        </div>
      </nav>
    </div>
  </div> 
<br>
<script>
function myFunction() {
    window.print();
}
</script>
<h1>Hasil Diagnosa</h1><br>
<div class="container">
  <button style="float:right;" class="btn btn-success" onclick="myFunction()">CETAK</button>
</div>
<div class="container col-6">
	<div class="input-group mb-3">
    	<div class="input-group-prepend">
        	<span class="input-group-text"><h5>PENYAKIT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h5></span>
    	</div>
    	<textarea class="form-control" rows="1"readonly><?php echo "$penyakit"; ?></textarea>
  	</div>

	<div class="input-group mb-3">
  		<div class="input-group-prepend">
    		<span class="input-group-text"><h5>DEFINISI&nbsp;&nbsp;&nbsp;</h5></span>
	  	</div>
		<textarea class="form-control" rows="6"   readonly><?php echo "$definisi"; ?></textarea>
	</div>
    
	<div class="input-group mb-3">
  		<div class="input-group-prepend">
    		<span class="input-group-text"><h5>PENYEBAB&nbsp;&nbsp;&nbsp;</h5></span>
	  	</div>
		<textarea class="form-control" rows="6"   readonly><?php echo "$penyebab"; ?></textarea>
	</div>

	<div class="input-group mb-3">
  		<div class="input-group-prepend">
    		<span class="input-group-text"><h5>SARAN</h5></span>
  		</div>
		<textarea class="form-control" rows="6"  readonly><?php echo "$pengendalian_teknis"; ?> </textarea>
	</div>
    
  
</div>
<br>
<div class="container-fluid bg-dark text-light border-top border-secondary py-4">
    <div class="container">
      <div class="row g-5">
        <div class="col-md-6 text-center text-md-start">
          <p class="mb-md-0">&copy; <a class="text-primary" href="#">DICO-4</a>. All Rights Reserved.</p>
        </div>
        <!-- <div class="col-md-6 text-center text-md-end">
               <p class="mb-0">Designed by <a class="text-primary" href="https://htmlcodex.com">HTML Codex</a></p>
            </div> -->
      </div>
    </div>
  </div>

