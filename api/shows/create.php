<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include_once '../config/database.php';
include_once '../objects/shows.php';

$database = new Database();
$db = $database->getConnection();

$show = new Shows($db);

$payload = json_decode(file_get_contents("php://input"));

// Is there a shorter way to do this? If any null.
if (
    !empty($payload->type) &&
    !empty($payload->title) &&
    !empty($payload->release_year) &&
    !empty($payload->description)
) {
    $show->type = $payload->type;
    $show->title = $payload->title;
    $show->description = $payload->description;
    $show->release_year = $payload->release_year;
    $show->listed_in = $payload->listed_in;

    if ($show->create()) {
        http_response_code(201);
        echo json_encode(array("message" => "Show was created."));
    } else {
        // 503 service unavailable
        http_response_code(503);
        echo json_encode(array("message" => "Unable to create show."));
    }
} else {
    // 400 bad request
    http_response_code(400);
    echo json_encode(array("message" => "Unable to create show. Data is incomplete."));
}
