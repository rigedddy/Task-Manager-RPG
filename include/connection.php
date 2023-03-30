<?php

$db = mysqli_connect('localhost', 'root', '', 'taskrpg');
if($db){
    //echo 'database connection established';
}
else{
    die('Database connection lost: ' . mysqli_error($db));
}

?>


