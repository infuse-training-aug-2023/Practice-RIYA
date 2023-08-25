import React, { useState, useEffect } from 'react';
import axios from 'axios'

function App() {
  const [data, setData] = useState([]);

  useEffect(() => {

    async function fetchData() {

      try {

        const response = await axios.get("http://localhost:5000/");

        setData(response.data);

      } catch (error) {

        console.error("Error fetching data:", error);

      }

    }

 

    fetchData();

  }, []);

  return (
    <div>
      <h1>Data from Backend:</h1>
      <ul>
        {data.map((item) => (
          <li key={item.id}>
            <p>ID: {item.id}</p>
            <p>Name: {item.first_name} {item.last_name}</p>
            <p>Email: {item.email}</p>
            <p>Gender: {item.gender}</p>
            <p>IP Address: {item.ip_address}</p>
            <hr />
          </li>
        ))}
      </ul>
    </div>
  );
}

export default App;
