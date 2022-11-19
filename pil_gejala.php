<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap.min.css">
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

<?php include 'koneksi.php';?>
<center>
<form class="col-6" method="POST" action="proses.php">
<div style="overflow: scroll; height: 467px;">
<?php
//cek db gejala
	$qry="select * from tb_gejala";
	$data=mysqli_query($kon,$qry);
	//agar berlaku berulangan sebanyak data yg ada di tb_gejala
	while ($d=mysqli_fetch_array($data)) {
	?>
	<div class="input-group mb-3">
  		<div class="input-group-prepend">
		    <div class="input-group-text">
    		    <input type="checkbox" aria-label="Checkbox for following text input" value="<?=$d['kode']?>" name="<?=$d['id']?>">
    		</div>
  		</div>
			<input type="text" class="form-control" aria-label="Text input with checkbox" value="<?=$d['gejala']?>">
	</div>
    <?php
	//stop perulangan!
	}
	?>
</div>
	<input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" value="submit">
</form>
</center>

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
