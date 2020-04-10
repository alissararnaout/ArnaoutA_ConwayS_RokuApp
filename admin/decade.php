<?php
require_once '../load.php';

if (isset($_GET['media'])){
    $tbl = "tbl_" . trim($_GET["media"]);
    //echo $tbl;
}

if (isset($_GET['dfilter'])) {
    //Filter
    $args = array(
        'tbl' => $tbl,
        'tbl2' => 'tbl_decade_m',
        'tbl3' => 'tbl_mov_decade',
        'col' => 'movie_id',
        'col2' => 'decade_m_id',
        'col3' => 'decade_m_name',
        'dfilter' => $_GET['dfilter']
    );
    $results = getMoviesByDecade($args);
    echo json_encode($results->fetchAll(PDO::FETCH_ASSOC));
} else {
    $results = getAll($tbl);
    echo json_encode($results);
}
