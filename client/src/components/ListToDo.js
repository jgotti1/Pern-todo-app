import React, { useEffect, useState } from "react";
import { fetchPath } from "./hooks/FetchPaths";

import Edit from "./EditToDo";

function ListToDo() {
  const [toDos, setTodos] = useState([]);

  //delete to do
  const handleDelete = async (id) => {
    try {
      const response = await fetch(`${fetchPath}/${id}`, { method: "DELETE" });

      if (response.ok) {
        setTodos(toDos.filter((todo) => todo.todo_id !== id));
      }
    } catch (error) {
      console.log(error.message);
    }
  };

  // get all items
  const getTodos = async () => {
    try {
      const response = await fetch(fetchPath);
      const jsonData = await response.json();

      setTodos(jsonData);
    } catch (error) {
      console.log(error.message);
    }
  };

  //on load run get all items function
  useEffect(() => {
    getTodos();
  }, []);

  return (
    <>
      <table className="table mt-5 text-left">
        <thead>
          <tr>
            <th>Task Description</th>
            <th>Edit Task</th>
            <th>Delete Task</th>
          </tr>
        </thead>
        <tbody>
          {toDos.map((todo) => (
            <tr key={todo.todo_id}>
              <td>{todo.description}</td>
              <td>
                <Edit todo={todo} />
              </td>
              <td>
                <button onClick={() => handleDelete(todo.todo_id)} className="btn btn-xs  btn-danger">
                  Delete
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </>
  );
}

export default ListToDo;
