const express = require('express');
const app = express();
const cors = require('cors');
const port = 3003;

app.use(cors());
app.use(express.json());

app.get('/', (req, res) => {
  const jsonData = { message: 'Hello from the server version 2!' };
  res.json(jsonData);
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
