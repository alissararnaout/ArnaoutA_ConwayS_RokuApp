<?php
require_once '../load.php';

if (isset($_GET['media'])){
    $tbl = "tbl_" . trim($_GET["media"]);
    //echo $tbl;
}


if (isset($_GET['filter'])) {
    //Filter
    $args = array(
        'tbl' => $tbl,
        'tbl2' => 'tbl_genre_m',
        'tbl3' => 'tbl_mov_genre',
        'col' => 'movie_id',
        'col2' => 'genre_m_id',
        'col3' => 'genre_m_name',
        'filter' => $_GET['filter']
    );
    $results = getMoviesByFilter($args);
    echo json_encode($results->fetchAll(PDO::FETCH_ASSOC));
} else {
    $results = getAll($tbl);
    echo json_encode($results);
}




