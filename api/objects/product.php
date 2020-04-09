<?php
class Movie
{

    private $conn;

    // Note: update table names, column names in here
    public $movies_table               = 'tbl_movies';
    public $genre_table               = 'tbl_genre_m';
    public $movies_genre_linking_table = 'tbl_mov_genre';

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function getMovies()
    {
        //TODO:write the SQL query that returns all movies from the tbl_movies table
        // $query = 'SELECT * FROM '.$this->movies_table;


        //TODO:write the SQL query that returns all movies with its genre
        $query = 'SELECT m.*, GROUP_CONCAT(g.genre_m_name) as genre_m_name FROM ' . $this->movies_table . ' m';
        $query .= ' LEFT JOIN ' . $this->movies_genre_linking_table . ' link ON link.movie_id = m.movie_id';
        $query .= ' LEFT JOIN ' . $this->genre_table . ' g ON link.genre_m_id = g.genre_m_id ';
        $query .= ' GROUP BY m.movie_id';

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    public function getMoviesByGenre($genre){
        $query = 'SELECT m.*, GROUP_CONCAT(g.genre_m_name) as genre_m_name FROM ' . $this->movies_table . ' m';
        $query .= ' LEFT JOIN ' . $this->movies_genre_linking_table . ' link ON link.movie_id = m.movie_id';
        $query .= ' LEFT JOIN ' . $this->genre_table . ' g ON link.genre_m_id = g.genre_m_id ';
        $query .= ' GROUP BY m.movie_id';
        $query .= ' HAVING genre_m_name LIKE "%'.$genre.'%"';

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    public function getMoviesByID($id)
    {
        $query = 'SELECT m.*, GROUP_CONCAT(g.genre_m_name) as genre_m_name FROM ' . $this->genre_table . ' m';
        $query .= ' LEFT JOIN ' . $this->movies_genre_linking_table . ' link ON link.movie_id = m.movie_id';
        $query .= ' LEFT JOIN ' . $this->genre_table . ' g ON link.genre_m_id = g.genre_m_id ';
        $query .= ' WHERE m.movie_id=' . $id;
        $query .= ' GROUP BY m.genre_m_id';

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }
}
