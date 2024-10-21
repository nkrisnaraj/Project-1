<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");


include '../Connection/connection.php';

try{
    $sql = "SELECT customerID, orderDate, SUM(total) AS total, status
    FROM orders
    WHERE status IN ('pending', 'delivered','processing')
    GROUP BY customerID, orderID, orderDate, status
    ORDER BY orderDate DESC";
    

    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $orders = $stmt->fetchAll(PDO::FETCH_ASSOC); 

    echo json_encode(['success'=> true, 'data'=>$orders]);
    

} catch (Exception $e) {
    echo json_encode(['success'=> false, 'message'=>'Error fetching customers', 'error'=>$e->getMessage()]);

}



?>

