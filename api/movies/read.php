<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// include database and object files
include_once '../../config/database.php';
include_once '../objects/product.php';


$db       = Database::getInstance()->getConnection();

$movie = new Movie($db);


if (isset($_GET['id'])) {
    $stmt = $movie->getMoviesByID($_GET['id']);
} else if(isset($_GET['genre'])){
    $stmt = $movie->getMoviesByGenre($_GET['genre']);
}else {
    $stmt = $movie->getMovies();
}

$num = $stmt->rowCount();

// check if more than 0 record found
if ($num > 0) {

    // movies array
    $results = array();

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $single_movie = $row;
        $results[]    = $single_movie;
    }

    //TODO:chat about JSON_PRETTY_PRINT vs not
    echo json_encode($results, JSON_PRETTY_PRINT);
} else {
    echo json_encode(
        array(
            "message" => "No Movies found.",
        )
    );
}
