import React from 'react';
import ReactDOM from 'react-dom';
// import Clock from './clock.jsx';
import App from './root.jsx'

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  ReactDOM.render(<App/>, root);


});
