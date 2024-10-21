<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, GET");
header("Access-Control-Allow-Headers: Content-Type");

include '../Connection/connection.php';

if($_SERVER['REQUEST_METHOD']=='POST'){

    
    $response = [];
    try {
        $sql = "SELECT COUNT(*) as count FROM orders WHERE status='pending'";
        $pstmt = $conn->prepare($sql);
       
        $pstmt->execute();
        $pending = $pstmt->fetch(PDO::FETCH_ASSOC);
        $response['pending'] = $pending['count'];
        
    } catch (\Throwable $th) {
        $response['pendingError'] = 'Error counting  pending';
    }

    try {
        $sql = "SELECT COUNT(*) as count FROM orders WHERE status='delivered'";
        $pstmt = $conn->prepare($sql);
       
        $pstmt->execute();
        $delivered = $pstmt->fetch(PDO::FETCH_ASSOC);
        $response['delivered'] = $delivered['count'];
        
    } catch (\Throwable $th) {
        $response['deliveredError'] = 'Error counting delivered';
    }

    try {
        $sql = "SELECT COUNT(*) as count FROM orders WHERE status='processing'";
        $pstmt = $conn->prepare($sql);
       
        $pstmt->execute();
        $processing = $pstmt->fetch(PDO::FETCH_ASSOC);
        $response['processing'] = $processing['count'];
        
    } catch (\Throwable $th) {
        $response['processingError'] = 'Error counting processing';
    }

    
    
   
   echo json_encode($response); 


}

?>