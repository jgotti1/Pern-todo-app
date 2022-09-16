import "./App.css";
import React, { Fragment } from "react";
import InputToDo from "./components/InputToDo";
import List from "./components/ListToDo";

function App() {
  return (
    <Fragment>
      <div className="container">
        <InputToDo />
        <List/>
      </div>
    </Fragment>
  );
}

export default App;
