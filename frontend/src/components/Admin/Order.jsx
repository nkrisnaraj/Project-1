import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import { useState } from 'react';
import { useEffect } from 'react';
import axios from 'axios';

const  AdminOrder=(()=> {
  const [orders, setOrders] = useState([])
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  const fetchOrderData = async () => {
    setLoading(true);
    try {
      const response = await axios.post('http://localhost:8080/backend/api/Admin/Recentorder.php');
    //  const jsonData = await response.json();
      console.log(response.data.data);
      const data = response.data;
      if (data.success) {
        setOrders(response.data.data);
      } else {
        setError("Failed to fetch orders");
      }
    } catch (error) {
      setError(error.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchOrderData();
    
  }, []);
  

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (

    <div className='container mt-5'>
      <div className='row justify-content-center'>
        <div className='col-md-12 col-lg-9'>
          <div className='card'>
            <div className='card-header bg-dark text-white'>
              <h1 className='h4'>Recent_Orders</h1>
            </div>
            <div className='card-body p-0'>
              <div className='table-responsive'>
                <table className='table table-bordered table-striped'>
                  <thead className='thead-dark'>
                    <tr style={{fontSize:'105%'}}>
                      {/* <th>Order_ID</th> */}
                      <th>Customer_ID</th>
                      <th>Order_Date</th>
                      <th>Amount</th>
                      <th>Status</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                    {orders.length > 0 ? (
                      orders.map((order) => (
                        <tr key={order.customerID} style={{fontSize:'55%'}}>
                          {/* <td>{order.orderID}</td> */}
                          <td>{order.customerID}</td>
                          <td>{order.orderDate}</td>
                          <td>{order.total}</td>
                          <td>{order.status}</td>
                        </tr>
                      ))
                    ) : (
                      <tr>
                        <td colSpan="5">No orders found</td>
                      </tr>
                    )}
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  )
}
)
export default AdminOrder;
