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

if ($show->delete()) {
    http_response_code(200);
    echo json_encode(
        array("message" => "Show is deleted.")
    );
} else {
    // set response code - 503 service unavailable
    http_response_code(503);
    echo json_encode(
        array("message" => "Unable to delete show.")
    );
}
