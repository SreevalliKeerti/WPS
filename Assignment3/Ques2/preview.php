<?php
    session_start();
    $_SESSION['posttitle']=$_POST['posttitle'];
    $_SESSION['content']=$_POST['content'];
    $_SESSION['authorname']=$_POST['authorname'];
?>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blogs Portal</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>

<body>
    <div class="jumbotron bg-light text-dark text-center">
        <h2 class="display-4">Preview Post</h2>
        <p class="lead">You can preview your posts here!</p>
    </div>
    <button class="btn btn-dark"><a href="./index.html" style="text-decoration: none; color: white;">Back</a></button> 
    <div class="container">
        <h3 class="text-center"></h3>
        <span>Post Title: </span> <?php echo $_SESSION['posttitle']; ?> <br>
        <span>Content: </span> <?php echo $_SESSION['content']; ?> <br>
        <span>Author Name: </span> <?php echo $_SESSION['authorname']; ?> <br>

        <div>
            <label for="accept">I accept to post this:</label>
            <input type="checkbox" id="accept" value="1" />
        </div>
        <button class="btn btn-success" disabled><a href="./insert.php" style="text-decoration: none; color: white;">Accept &amp; Continue</a></button> 
    </div>

    <script>
        $('#accept').click(function(){
           
            if($(this).is(':checked')){
                $('.btn').attr("disabled", false);
            } else{
                $('.btn').attr("disabled", true);
            }
        });
    </script>
</body>

</html>