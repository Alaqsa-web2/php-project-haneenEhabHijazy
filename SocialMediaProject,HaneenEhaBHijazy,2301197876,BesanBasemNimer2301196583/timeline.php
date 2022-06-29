<!DOCTYPE html>
<html>

<head>
	<title>Welcome To SocialMedia - Sign up, Log in, Post </title>
	<link rel="stylesheet" type="text/css" href="css/timeline.css">


</head>

<body>
	<?php include('session.php'); ?>

	<div id="header">
		<div class="head-view">
			<ul>
				<li><a href="home.php" title="SocialMedia"><b>SocialMedia</b></a></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li><a href="timeline.php" title="<?php echo $username ?>"><label class="active"><?php echo $username ?></label></a></li>
				<li><a href="home.php" title="Home"><label>Home</label></a></li>
				<li><a href="logout.php" title="Log out"><button class="btn-sign-in" value="Log out">Log out</button></a></li>
			</ul>
		</div>
	</div>

	<div id="container">

		<div id="clip2">
			<a href="updatecover.php" title="Change Cover Photo"><img src="<?php echo $row['cover_picture'] ?>"></a>



		</div>

		<div id="left-nav">

			<div class="clip1">

				<a href="updatephoto.php" title="Change Profile Picture"><img src="<?php echo $row['profile_picture'] ?>"></a>
			</div>

			<div class="user-details">
				<label><?php echo $firstname ?>&nbsp;<?php echo $lastname ?></label>
				<br />
				<b>(<?php echo $username ?>)</b>
			</div>
		</div>

		<?php
		include('includes/database.php');

		if (!isset($_FILES['image']['tmp_name'])) {
			echo "";
		} else {
			$file = $_FILES['image']['tmp_name'];
			$image = $_FILES["image"]["name"];
			$image_name = addslashes($_FILES['image']['name']);
			$size = $_FILES["image"]["size"];
			$error = $_FILES["image"]["error"];

			if ($error > 0) {
				die("Error uploading file! Code $error.");
			} else {
				if ($size > 10000000) //conditions for the file
				{
					die("Format is not allowed or file size is too big!");
				} else {

					move_uploaded_file($_FILES["image"]["tmp_name"], "upload/" . $_FILES["image"]["name"]);
					$location = "upload/" . $_FILES["image"]["name"];
					$user = $_SESSION['id'];
					$content = $_POST['content'];
					$time = time();

					$update = mysqli_query($con, " INSERT INTO post (user_id,post_image,content,created)
									VALUES ('$id','$location','$content','$time') ");
				}
				header('location:timeline.php');
			}
		}
		?>

	</div>

	</div>

	<div id="container">


	<div style=' float:right;
    width:800px;
    background-color:#ffffff;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    border:3px solid #CCCCCC;
    margin-top:200px;'>
			<h1 style='text-align:center;'>Personal Info</h1>
			<hr />
			<br />
			<?php
			include('includes/database.php');

			$result = mysqli_query($con, "SELECT * FROM user where user_id='$id' ");

			while ($test = mysqli_fetch_array($result)) {
				$id = $test['user_id'];
				echo " <div style=' width:400px ; margin:auto;'>";
				echo " <div>";
				echo " <label>Firstname</label>&nbsp;&nbsp;&nbsp;<b>" . $test['firstname'] . "</b>";
				echo "</div> ";
				echo "<hr /> ";
				echo "<br /> ";
				echo " <div>";
				echo " <label>Lastname</label>&nbsp;&nbsp;&nbsp;&nbsp;<b>" . $test['lastname'] . "</b>";
				echo "</div> ";
				echo "<hr /> ";
				echo "<br /> ";
				echo " <div>";
				echo " <label>Username</label>&nbsp;&nbsp;&nbsp;<b>" . $test['username'] . "</b>";
				echo "</div> ";
				echo "<hr /> ";
				echo "<br /> ";
				echo " <div>";
				echo " <label>Birthday</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>" . $test['birthday'] . "</b>";
				echo "</div> ";
				echo "<hr /> ";
				echo "<br /> ";
				echo " <div>";
				echo " <label>Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>" . $test['gender'] . "</b>";
				echo "</div> ";
				echo "<hr /> ";
				echo "<br /> ";
				echo " <div>";
				echo " <label>Number</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>" . $test['number'] . "</b>";
				echo "</div> ";
				echo "<hr /> ";
				echo "<br /> ";
				echo "</div> ";
				echo "<br /> ";
				echo " <div style=' float:right; margin-right:10px;'>";
				echo " <a href ='edit_profile.php?user_id=$id'><button>Edit Profile</button></a>";
				echo "</div> ";
				echo "<br /> ";
				echo "<br /> ";
			}
			?>

		</div>
	</div>
	</div>

</body>

</html>