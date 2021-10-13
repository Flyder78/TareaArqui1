import Form from 'react-bootstrap/Form'
import FloatingLabel from 'react-bootstrap/FloatingLabel'
import 'bootstrap/dist/css/bootstrap.min.css';
import Button from "react-bootstrap/Button";
import React, { useState } from "react";

export default function Writting() {
  const [commit, setCommit] = useState("");

  function validateForm() {
    return commit.length > 0;
  }


  async function Write(){
      fetch('http://localhost:3000/writecommit', {
        method: 'POST',
        headers: {
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          idchamp:localStorage.getItem('idchamp') ,
          user:localStorage.getItem('token'),
          commit: commit
        }),
      })
        .then((response) => response.json())
        .catch((error) => {
          console.error(error);
        });
    
  }
  function handleSubmit(event) {
    Write();
    event.preventDefault();
  }
    return(
      <Form onSubmit={handleSubmit}>
    <Form.Control
      as="textarea"
      placeholder="Leave a comment here"
      value={commit}
      onChange={(e)=> setCommit(e.target.value)}
      style={{ height: '100px' }}
    />
    <Button variant="primary" type="submit" disabled={!validateForm()}>Submit</Button>
    </Form>

  );
  

}