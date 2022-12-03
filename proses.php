<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
  <title>DICO-4</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Free HTML Templates" name="keywords">
  <meta content="Free HTML Templates" name="description">

  <!-- Favicon -->
  <link href="img/favicon.ico" rel="icon">

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">

  <!-- Icon Font Stylesheet -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

  <!-- Libraries Stylesheet -->
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

  <!-- Customized Bootstrap Stylesheet -->
  <link href="bootstrap.min.css" rel="stylesheet">

  <!-- Animate On Scroll -->
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Template Stylesheet -->
  <link href="style.css" rel="stylesheet">
</head>
<body>
	
</body>
</html>

<?php
include 'koneksi.php';
if(isset($_POST['submit'])){
//mencari id penyakit berdasarkan gejala yang di inputkan
	$qry='select id from tb_rule where ';
	array_pop($_POST);
	$rule_input=array();
	foreach ($_POST as $where) {
		$qry.=$where."=1 and ";
		array_push($rule_input,$where);
	}
	$qry.="1=1";
	$data=mysqli_query($kon,$qry);
	$id='';
	
//memindahkan rule dari database ke array
	$db_rule=mysqli_query($kon,"select * from tb_rule");
	while ($d=mysqli_fetch_array($db_rule)) {
		$arr_rule[]=$d;
	}
//mencari value dari  yg memiliki nilai 1 dan akan di simpan dalam array rule
	$rule=array();
	for ($i=0; $i <sizeof($arr_rule) ; $i++) { 
		$key=array_keys($arr_rule[$i]);
		$val=$arr_rule[$i];
		$sub_rule=array();
		for($j=3;$j<(sizeof($key));$j+=2){
			if($val[$key[$j]]==1)
				$sub_rule[]=$key[$j];
		}
		$rule[]=$sub_rule;
	}
	$status=false;
//mencocokan gejala yang di inputkan user dengan rule yang ada
	for ($i=0; $i <sizeof($rule); $i++) {
		$result=($rule_input==$rule[$i]);
		if ($result) {
			$status=true;
		}
	}
//jika di temukan akan menampilkan data dari penyakit
	if($status==true){
		while ($d=mysqli_fetch_array($data)) {
			$id=$d['id'];
		}
		$cari_penyakit="select * from tb_penyakit where id=$id";
		$db=mysqli_query($kon,$cari_penyakit);
		while ($d=mysqli_fetch_array($db)) {
			$penyakit=$d['penyakit'];
			$definisi=$d['definisi'];
			$penyebab=$d['penyebab'];
			$pengendalian_teknis=$d['pengendalian_teknis'];
			$pengendalian_kimia=$d['pengendalian_kimia'];
			include 'hasil.php';
		}
	}else{
		include 'error.php';
	}
}
?>
