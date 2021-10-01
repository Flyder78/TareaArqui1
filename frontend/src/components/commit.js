import React, { useState,useEffect } from "react";
import Card from "react-bootstrap/Card";
import Button from "react-bootstrap/Button";
import 'bootstrap/dist/css/bootstrap.min.css';
import Toast from 'react-bootstrap/Toast';
import ToastContainer from 'react-bootstrap/ToastContainer'

export default function Champions() {



    const [champ, setchamp] = useState([]);
    const [data, setdata] = useState([]);

    useEffect(() => {
        const getChamps = async () => {
            fetch('http://localhost:3000/commit', {
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
                    setchamp(value);
                    console.log(champ)
                    
                });
        };
        getChamps().catch(null);
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
                    console.log(data)
                    
                });
        };
        getCommit().catch(null);


    }, []);

    
    return(
    <div>
        <ToastContainer>
        <div>{champ.map(data => (
            champ.name
        ))}</div>
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