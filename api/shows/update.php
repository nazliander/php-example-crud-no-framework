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
$show->show_id = $payload->show_id;

$show->type = $payload->type;
$show->title = $payload->title;
$show->description = $payload->description;
$show->release_year = $payload->release_year;
$show->listed_in = $payload->listed_in;

if ($show->update()) {
    http_response_code(200);
    echo json_encode(
        array("message" => "Show is updated.")
    );
} else {
    // 503 service unavailable
    http_response_code(503);
    echo json_encode(
        array("message" => "Unable to update show.")
    );
}
