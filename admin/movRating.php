<?php
require_once '../load.php';

if (isset($_GET['media'])){
    $tbl = "tbl_" . trim($_GET["media"]);
    //echo $tbl;
}

if (isset($_GET['mrfilter'])) {
    //Filter
    $args = array(
        'tbl' => $tbl,
        'tbl2' => 'tbl_ratings_m',
        'tbl3' => 'tbl_mov_ratings',
        'col' => 'movie_id',
        'col2' => 'ratings_m_id',
        'col3' => 'ratings_m_name',
        'mrfilter' => $_GET['mrfilter']
    );
    $results = getMoviesByRatings($args);
    echo json_encode($results->fetchAll(PDO::FETCH_ASSOC));
} 
