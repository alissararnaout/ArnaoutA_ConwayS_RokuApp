<?php
require_once '../load.php';

if (isset($_GET['movies'])){
    $results = getAllMoviesChild();
    //echo $tbl;
}

if (isset($_GET['dfilter'])) {
    //Filter
    $args = array(
        'tbl' => 'tbl_movies',
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
    $results = getAllMoviesChild();
    echo json_encode($results);
}
