<?php
class Database
{
    public $conn;

    public function getConnection()
    {
        $this->conn = null;

        try {
            $this->conn = new PDO(
                "mysql:host=" . $_ENV["MYSQL_HOSTNAME"] .
                    ";dbname=" . $_ENV["MYSQL_DATABASE"],
                $_ENV["MYSQL_USER"],
                $_ENV["MYSQL_PASSWORD"]
            );
            $this->conn->exec("set names utf8");
        } catch (PDOException $exception) {
            echo "Connection error: " . $exception->getMessage();
        }

        return $this->conn;
    }
}
