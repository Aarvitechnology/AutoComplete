<?php
include 'config.php';

if (!isset($_POST['searchTerm'])) {

    $fetchData = mysqli_query($con, "select * from users order by name");
} else {

    $search = $_POST['searchTerm'];
    $fetchData = mysqli_query($con, "select * from users where name like '%" . $search . "%'");
}
$search = $_POST['searchTerm'];
// echo "<pre>";
// print_r($_POST);
// $fetchData = mysqli_query($con,"select * from users where name like '".$search."%'");
$data = array();

while ($row = mysqli_fetch_array($fetchData)) {

    // $data[] = array(
    //     "SelectId" => $row['id'],
    //     "SelectText" => $row['name'],
    //     "avatar_url" => 'images/image1.jpg'
    // );

    $data[] = array(
        "id" => $row['id'],
        "text" => $row['name'],
        "avatar_url" => 'images/image1.jpg'
    );
}

echo json_encode($data);
