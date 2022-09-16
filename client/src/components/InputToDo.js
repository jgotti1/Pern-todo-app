import React, { useState } from "react";

function InputToDo() {
  const [description, setDescription] = useState("");
  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const body = { description };
      const response = await fetch("http://localhost:5000/todos", {
        method: "POST",
        headers: { "content-Type": "application/json" },
        body: JSON.stringify(body),
      });
      if (response.ok) {
     
        window.location.reload(false);
      }
    } catch (error) {
      console.log(error.message);
    }
  };
  return (
    <>
      <h1 className="text-center mt-5">To Do List</h1>
      <form className="d-flex mt-5" onSubmit={handleSubmit}>
        <input type="text" className="form-control" value={description} onChange={(e) => setDescription(e.target.value)} />

        <button className="btn btn-success">Add</button>
      </form>
    </>
  );
}

export default InputToDo;
