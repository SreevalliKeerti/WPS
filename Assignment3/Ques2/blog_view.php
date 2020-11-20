<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blogs Portal</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
  <div>
    <ul class="nav nav-tabs bg-light justify-content-center">
        <li class="nav-item">
            <a class="nav-link" href="index.html">Create Posts</a>
        </li>
        <li class="nav-item ">
            <a class="nav-link text-success" href="blog_view.php">View Posts</a>
        </li>
    </ul>
  </div>
  <div class="jumbotron bg-light text-dark text-center">
        <h2 class="display-4">All Posts</h2>
        <p class="lead">You can view everyone's posts here!</p>
    </div>
  <div class="container">
    <?php
      $con=mysqli_connect("localhost","root","","blog");                   

      if (!$con) {
        die('Not connected : ' . mysql_error());
      }

      $sql="SELECT * FROM blog_posts";
      $result=mysqli_query($con,$sql);

      $rowcount=mysqli_num_rows($result);
      while ($rowcount>0)
      {
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
      ?>
      <div class="border border-dark p-4">
        <p><strong><?php echo $row['post_title'];?></strong></p>
        <p style="margin-top:-20px;"><small> by <?php echo $row['author_name'];?> on <?php echo $row['post_date'];?></small></p>
        <p><?php echo $row['content']; ?></p>
      </div>
        <?php
        $rowcount-=1;
      }
    ?>
  </div>
</body>
</html>