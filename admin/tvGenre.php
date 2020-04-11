<?php
require_once '../load.php';

if (isset($_GET['media'])){
    $tbl = "tbl_" . trim($_GET["media"]);
    //echo $tbl;
}

if (isset($_GET['tfilter'])) {
    //Filter
    $args = array(
        'tbl' => $tbl,
        'tbl2' => 'tbl_genre_t',
        'tbl3' => 'tbl_tv_genre',
        'col' => 'tv_id',
        'col2' => 'genre_t_id',
        'col3' => 'genre_t_name',
        'tfilter' => $_GET['tfilter']
    );
    $results = getTvByGenre($args);
    echo json_encode($results->fetchAll(PDO::FETCH_ASSOC));
} else {
    $results = getAll($tbl);
    echo json_encode($results);
}
