<?php
class Shows
{

    private $conn;
    private $table_name = "shows";

    public $show_id;
    public $title;
    public $description;
    public $listed_in;
    public $type;
    public $release_year;

    // Requires Database in init
    public function __construct($db)
    {
        $this->conn = $db;
    }

    function read()
    {
        $query = "SELECT 
                    show_id,
                    listed_in,
                    release_year,
                    title,
                    type,
                    description
                FROM " . $this->table_name . "
                ORDER BY release_year DESC, show_id ASC;";

        $statement = $this->conn->prepare($query);
        $statement->execute();

        return $statement;
    }

    function create()
    {
        $query = "INSERT INTO
                    " . $this->table_name . "
                SET
                    listed_in = :listed_in,
                    release_year = :release_year,
                    title = :title,
                    type = :type,
                    description = :description;";

        $statement = $this->conn->prepare($query);

        $this->listed_in = htmlspecialchars(strip_tags($this->listed_in));
        $this->release_year = htmlspecialchars(strip_tags($this->release_year));
        $this->title = htmlspecialchars(strip_tags($this->title));
        $this->type = htmlspecialchars(strip_tags($this->type));
        $this->description = htmlspecialchars(strip_tags($this->description));

        $statement->bindParam(":listed_in", $this->listed_in);
        $statement->bindParam(":release_year", $this->release_year, PDO::PARAM_INT);
        $statement->bindParam(":description", $this->description);
        $statement->bindParam(":title", $this->title);
        $statement->bindParam(":type", $this->type);

        if ($statement->execute()) {
            return true;
        }
        return false;
    }

    function update()
    {
        $query = "UPDATE " . $this->table_name . "
                    SET
                        listed_in = :listed_in,
                        release_year = :release_year,
                        title = :title,
                        type = :type,
                        description = :description
                    WHERE
                        show_id = :show_id;";

        $statement = $this->conn->prepare($query);

        $this->listed_in = htmlspecialchars(strip_tags($this->listed_in));
        $this->release_year = htmlspecialchars(strip_tags($this->release_year));
        $this->title = htmlspecialchars(strip_tags($this->title));
        $this->type = htmlspecialchars(strip_tags($this->type));
        $this->description = htmlspecialchars(strip_tags($this->description));
        $this->show_id = htmlspecialchars(strip_tags($this->show_id));

        $statement->bindParam(':title', $this->title);
        $statement->bindParam(':release_year', $this->release_year, PDO::PARAM_INT);
        $statement->bindParam(':description', $this->description);
        $statement->bindParam(':listed_in', $this->listed_in);
        $statement->bindParam(':type', $this->type);
        $statement->bindParam(':show_id', $this->show_id, PDO::PARAM_INT);

        if ($statement->execute()) {
            return true;
        }
        return false;
    }

    function delete()
    {
        $query = "DELETE FROM " . $this->table_name . " WHERE show_id = :show_id;";

        $statement = $this->conn->prepare($query);

        $this->show_id = htmlspecialchars(strip_tags($this->show_id));

        $statement->bindParam(":show_id", $this->show_id, PDO::PARAM_INT);

        if ($statement->execute()) {
            return true;
        }
        return false;
    }

    function search($keywords)
    {
        $query = "SELECT
                    show_id, title, description, type, listed_in, release_year
                FROM
                    " . $this->table_name . "
                WHERE
                    title LIKE :title OR description LIKE :description
                ORDER BY
                    release_year DESC, show_id ASC";

        $statement = $this->conn->prepare($query);
        $keywords = htmlspecialchars(strip_tags($keywords));
        $keywords = "%{$keywords}%";

        $statement->bindParam(":title", $keywords);
        $statement->bindParam(":description", $keywords);

        $statement->execute();
        return $statement;
    }
}
