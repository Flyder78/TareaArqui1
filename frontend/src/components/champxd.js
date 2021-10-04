import React, { useState,useEffect } from "react";
import 'bootstrap/dist/css/bootstrap.min.css';
import Image from 'react-bootstrap/Image';

export default function MostrarChamp() {
  const [data, setdata] = useState([]);
  useEffect(() => {
    const getChamp = async () => {
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
                setdata(value);
                
                
            });
    };
    getChamp().catch(null);


}, []);



    return(
    <div>
      {console.log(data)}
      <Image src={"../../iconos/"+localStorage.getItem('idchamp')+".jpg"} fluid />
      {data.map(data => (
        <div>
          <h1>{data.name}</h1>
          <h2>{data.title}</h2>
          <h3>{data.tag}</h3>
          </div>
       
      ))}
      
    </div>
  );
}