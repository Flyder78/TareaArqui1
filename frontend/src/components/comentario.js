import React from "react";
import 'bootstrap/dist/css/bootstrap.min.css';
import Commit from './commit.js'
import Write from './writecommit.js'
import Champ from './champxd.js'
import './comentario.css'
export default function Comentario() {



    
    
    return(
        <div className="parent">
        <div className="div1"><Champ/> </div>
        <div className="div2"><Write/> </div>
        <div className="div3"><Commit/> </div>
        </div>
        
    );
}