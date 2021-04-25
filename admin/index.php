<?php include "nav.php"; ?>
</br></br></br></br>

<div class="container"> </br></br>

<div class="card-deck">
<div class="card bg-primary">
<div class="card-body text-center">
<?php
$query = "SELECT * FROM posts ORDER BY post_id DESC";
        $result = mysqli_query($connection,$query); 
        $post_count=mysqli_num_rows($result); ?>
        <div class="row"> 
        <div class="col-2"> 
  <p class="card-text"><h1><i class="bi bi-stickies"></i></h1></p></div>
  <div class="col"> 
  <h4><?php echo $post_count ;?></h4>
  <h4>Posts</h4>
  </div>  </div></div>
  <div class="card-footer ">
  <a href="posts.php" class="text-dark">Details</a>
  </div>
</div>



<div class="card bg-danger">
<div class="card-body text-center">
<?php
$query = "SELECT * FROM comments ORDER BY comment_id DESC";
        $result = mysqli_query($connection,$query); 
        $comment_count=mysqli_num_rows($result); ?>
        <div class="row"> 
        <div class="col-2"> 
  <p class="card-text"><h1><i class="bi bi-chat-left"></i>
</h1></p></div>
  <div class="col"> 
  <h4><?php echo $comment_count ;?></h4>
  <h4>Comments</h4>
  </div>  </div></div>
  <div class="card-footer ">
  <a href="comments.php" class="text-dark">Details</a>
  </div>
</div>


<div class="card bg-warning">
<div class="card-body text-center">
<?php
$query = "SELECT * FROM cate ORDER BY cat_id DESC";
        $result = mysqli_query($connection,$query); 
        $cat_count=mysqli_num_rows($result); ?>
        <div class="row"> 
        <div class="col-2"> 
  <p class="card-text"><h1><i class="bi bi-controller"></i>
</h1></p></div>
  <div class="col"> 
  <h4><?php echo $cat_count ;?></h4>
  <h4>Category</h4>
  </div>  </div></div>
  <div class="card-footer ">
  <a href="cate.php" class="text-dark">Details</a>
  </div>
</div>


<div class="card bg-success">
<div class="card-body text-center">
<?php
$query = "SELECT * FROM users ORDER BY user_id DESC";
        $result = mysqli_query($connection,$query); 
        $user_count=mysqli_num_rows($result); ?>
        <div class="row"> 
        <div class="col-2"> 
  <p class="card-text"><h1><i class="bi bi-person-bounding-box"></i>
</h1></p></div>
  <div class="col"> 
  <h4><?php echo $user_count ;?></h4>
  <h4>Users</h4>
  </div>  </div></div>
  <div class="card-footer ">
  <a href="users.php" class="text-dark">Details</a>
  </div>
</div>
</div>
</div>
</div>
<div class="col-3 offset-3"> 
<div id="columnchart_material" style="width: 800px; height: 500px;"></div>
</div>

<?php include "../footer.php";?>




<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['data', 'count'],
          <?php

          $data=['Posts','Comments','Users','Category'];
          $count=[$post_count,$comment_count,$user_count,$cat_count];
for($i=0;$i<4;$i++){

    echo "['$data[$i]'" . "," . "$count[$i]],";


}

?>
        ]);

        var options = {
          chart: {
            title: '',
            subtitle: '',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>