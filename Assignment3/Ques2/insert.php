<!DOCTYPE html>
	<head>
		<title>Blogs Portal</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	</head>
	<body class="container">		
		<?php	
			session_start();	
			$con=mysqli_connect("localhost","root","","blog");
			
			$posttitle = $_SESSION['posttitle'];
			$content = $_SESSION['content'];
			$authorname = $_SESSION['authorname'];

			if (mysqli_connect_errno())
			{
			echo "Failed to connect to MySQL: " . mysqli_connect_error();
			}
			
			$sql="INSERT into blog_posts (post_title,content,author_name,post_date) values('".$posttitle."','".$content."','".$authorname."',now())";

			if (!mysqli_query($con,$sql))
			{
				die('Error: ' . mysqli_error($con));
			}
			echo "<div class=\"alert alert-success mt-4\" role=\"alert\"> Post successfully added into the blog!! Click here to view all other posts <a href=\"blog_view.php\">View Posts</a> </div>";
			mysqli_close($con);
		?>		
	</body>
</html>