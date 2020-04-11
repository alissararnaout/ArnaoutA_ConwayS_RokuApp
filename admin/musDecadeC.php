<?php
require_once '../load.php';

if (isset($_GET['music'])){
    $results = getAllMusicChild();
    //echo $tbl;
}

if (isset($_GET['mdfilter'])) {
    //Filter
    $args = array(
        'tbl' => 'tbl_music',
        'tbl2' => 'tbl_decade_a',
        'tbl3' => 'tbl_mus_decade',
        'col' => 'music_id',
        'col2' => 'decade_a_id',
        'col3' => 'decade_a_name',
        'mdfilter' => $_GET['mdfilter']
    );
    $results = getMusicByDecade($args);
    echo json_encode($results->fetchAll(PDO::FETCH_ASSOC));
} else {
    $results = getAllMusicChild();
    echo json_encode($results);
}