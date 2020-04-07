<?php
    require('connect.php');

    function getMovies($conn) {
        $movie_query = 'SELECT * FROM tbl_movies';
        $getMovieData = $conn->query($movie_query);
    
        $result = array();
        while ($row = $getMovieData->fetch(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }
    
        return $result;
    }

    function getTv($conn) {
        $tv_query = 'SELECT * FROM tbl_tv';
        $getTvData = $conn->query($tv_query);
    
        $result = array();
        while ($row = $getTvData->fetch(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }
    
        return $result;
    }

    function getAudio($conn) {
        $audio_query = 'SELECT * FROM tbl_music';
        $getAudioData = $conn->query($audio_query);
    
        $result = array();
        while ($row = $getAudioData->fetch(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }
    
        return $result;
    }

    function getUser($conn) {
        // validate that the post method is working from our js file 

        $username = $_POST["username"];

        //echo $username;

        $getUser = 'SELECT * FROM users WHERE uname="'.$username.'"';
        $runQuery = $conn->query($getUser);

        $result = array();

        while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
            // push each row of data into our arry to make it easy to iterate over
            $result[] = $row;
        }

        return $result;
    }



    function getUsers($conn) {
        $getData = 'SELECT * FROM users';
        $runQuery = $conn->query($getData);

        $result = array();

        while ($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
            // push each row of data into our array to make it easy to iterate over
            $result[] = $row;
        }

        return $result;
    }
    

   