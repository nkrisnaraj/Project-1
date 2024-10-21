import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Button, Table } from 'react-bootstrap';

function RecentOrders() {
  const [orders, setOrders] = useState([]);

  useEffect(() => {
    fetchOrders();
  }, []);

  const fetchOrders = async () => {
    try {
      const response = await axios.get('http://localhost:8080/backend/api/Admin/orders.php');
      setOrders(response.data);
    } catch (error) {
      console.error('Error fetching orders:', error);
    }
  };

  const handleOrderClick = (orderID, action, total) => {
    if (action === 'pay') {
      // Redirect to payment page or handle payment action
    } else if (action === 'view') {
      // Show order details or items
    }
  };

  return (
    <Table striped bordered hover>
      <thead>
        <tr>
          <th>Order ID</th>
          <th>Total</th>
          <th>Order Date</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        {orders.map((order) => (
          <tr key={order.customerID}>
            <td>{order.orderID}</td>
            <td>Rs. {order.total}</td>
            <td>{new Date(order.orderDate).toLocaleDateString()}</td>
            <td>
              <Button variant="primary" onClick={() => handleOrderClick(order.orderID, 'pay', order.total)}>
                Pay Now
              </Button>
              <Button variant="info" className="ms-2" onClick={() => handleOrderClick(order.orderID, 'view', order.total)}>
                View Items
              </Button>
            </td>
          </tr>
        ))}
      </tbody>
    </Table>
  );
}

export default RecentOrders;
