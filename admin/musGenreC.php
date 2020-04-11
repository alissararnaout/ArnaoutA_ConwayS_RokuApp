<?php
require_once '../load.php';

if (isset($_GET['music'])){
    $results = getAllMusicChild();
    //echo $tbl;
}

if (isset($_GET['mfilter'])) {
    //Filter
    $args = array(
        'tbl' => 'tbl_music',
        'tbl2' => 'tbl_genre_a',
        'tbl3' => 'tbl_mus_genre',
        'col' => 'music_id',
        'col2' => 'genre_a_id',
        'col3' => 'genre_a_name',
        'mfilter' => $_GET['mfilter']
    );
    $results = getMusicByGenre($args);
    echo json_encode($results->fetchAll(PDO::FETCH_ASSOC));
} else {
    $results = getAllMusicChild();
    echo json_encode($results);
}

