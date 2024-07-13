import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';

function ProductList({ sidebarToggle, setSidebarToggle }) {
  const [products, setProducts] = useState([]);
  const [selectedProduct, setSelectedProduct] = useState();

  const onProductClick = (product) => {
    setSelectedProduct(product);
  };

  useEffect(() => {
    axios.get('http://localhost:8080/backend/api/connection.php')
      .then((res) => {
        setProducts(res.data);
      });
  }, []);

  return (
    <div className={`d-flex`}>
      <div className={`${sidebarToggle ? "ml-25" : "w-full"} z-0 card d-flex`}>
        <div className='card-header align-items-center justify-content-center d-flex'>
          <div className="row align-items-center d-flex">
            <div className="d-flex"><b>Product list</b></div>
          </div>
        </div>
        {/* <ProductDetail product={selectedProduct} className='d-none'/> */}
        <div className='container'>
          <div className='row cursor-pointer' >
            {products.map((product, index) => (
              <div className="col-md-3 col-sm-4 col-6" key={index}>
                <Link to={{ pathname: "/productDetail" }}
                  state={{ product }} 
                  onClick={() => onProductClick(product)}>
                  <div className="card my-3">
                    <img src={product.Image} className="card-img-top" alt="Product Image" />
                    <div className="card-body">
                      <h5 className="card-title">{product.Name}</h5>
                      <h6 className='card-title'>{product.Mobile}</h6>
                    </div>
                  </div>
                </Link>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}

export default ProductList;
