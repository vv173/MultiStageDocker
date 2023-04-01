import axios from 'axios';
import { useState, useEffect } from 'react';

function App() {
  const [data, setData] = useState({});

  useEffect(() => {
    axios.get('http://172.17.0.2:3000/').then((response) => {
      setData(response.data);
    });
  }, []);

  return (
    <div>
      <h1>Node.js Variables:</h1>
      <p>IP Address: {data.ip}</p>
      <p>Hostname: {data.hostname}</p>
      <p>Version: {data.version}</p>
    </div>
  );
}

export default App;
