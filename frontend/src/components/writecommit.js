import Form from 'react-bootstrap/Form'
import FloatingLabel from 'react-bootstrap/FloatingLabel'
import 'bootstrap/dist/css/bootstrap.min.css';
import Button from "react-bootstrap/Button";


export default function Writting() {
    return(
    <FloatingLabel controlId="floatingTextarea2" label="Comments">
    <Form.Control
      as="textarea"
      placeholder="Leave a comment here"
      style={{ height: '100px' }}
    />
    <Button variant="primary" type="submit">Submit</Button>
  </FloatingLabel>
  );
  

}