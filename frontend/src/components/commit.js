import React, { useState,useEffect } from "react";
import 'bootstrap/dist/css/bootstrap.min.css';
import Toast from 'react-bootstrap/Toast';
import ToastContainer from 'react-bootstrap/ToastContainer'

export default function Commit() {



    const [data, setdata] = useState([]);

    useEffect(() => {
        const getCommit = async () => {
            fetch('http://localhost:3000/commit2', {
          method: 'POST',
          headers: {
            Accept: 'application/json',
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            idchamp:localStorage.getItem('idchamp')
          }),
        })
                .then(response => response.json())
                .then(value => {
                    setdata(value);
                    
                });
        };
        getCommit().catch(null);


    }, []);

    
    return(
    <div>
      {console.log(data)}
        <ToastContainer>
            {data.map(data => (
                <Toast key={data.id_comentario}>
                <Toast.Header>
                  <img src="holder.js/20x20?text=%20" className="rounded me-2" alt="" />
                  <strong className="me-auto">{data.usuario}</strong>
                </Toast.Header>
                <Toast.Body>{data.comentario}</Toast.Body>
              </Toast>

            ))}
  </ToastContainer>
  </div>
        
    );
}