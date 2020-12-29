<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header("Content-Type: application/json; charset=UTF-8");

include_once '../config/core.php';
include_once '../config/database.php';
include_once '../objects/shows.php';

$database = new Database();
$db = $database->getConnection();

$show = new Shows($db);

$keywords = isset($_GET["s"]) ? $_GET["s"] : "";

$statement = $show->search($keywords);
$numberOfLines = $statement->rowCount();

if ($numberOfLines > 0) {

    $shows_array = array();
    $shows_array["records"] = array();

    while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {

        extract($row);

        $show_item = array(
            "show_id" => $show_id,
            "type" => $type,
            "description" => $description,
            "title" => $title,
            "release_year" => $release_year,
            "listed_in" => explode(", ", $listed_in)
        );
        // Append
        array_push($shows_array["records"], $show_item);
    }
    http_response_code(200);
    echo json_encode($shows_array);
} else {
    // 404 Not found
    http_response_code(404);
    echo json_encode(
        array("message" => "No shows found.")
    );
}