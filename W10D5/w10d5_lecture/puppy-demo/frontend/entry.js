import React from "react";
import ReactDOM from "react-dom";
import App from "./app"

document.addEventListener("DOMcontentloaded", () =>{
    const root = document.getElementById("root")
    // const hello = <h1> Hello from React!</h1>

    ReactDOM.render(<App names="Peter, Wnedie, and Charlie" />, root); //two args: WHAT and WHERE
})