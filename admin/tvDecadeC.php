<?php
require_once '../load.php';

if (isset($_GET['tv'])){
    $results = getAllTVChild();
    //echo $tbl;
}

if (isset($_GET['tdfilter'])) {
    //Filter
    $args = array(
        'tbl' => 'tbl_tv',
        'tbl2' => 'tbl_decade_t',
        'tbl3' => 'tbl_tv_decade',
        'col' => 'tv_id',
        'col2' => 'decade_t_id',
        'col3' => 'decade_t_name',
        'tdfilter' => $_GET['tdfilter']
    );
    $results = getTvByDecade($args);
    echo json_encode($results->fetchAll(PDO::FETCH_ASSOC));
} else {
    $results = getAllTVChild();
    echo json_encode($results);
}
