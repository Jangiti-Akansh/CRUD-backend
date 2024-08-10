const express = require('express');
const mysql = require('mysql2');
const app = express();
app.use(express.json());

var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "rtaa2003",
  database: "db" 
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("Connection has been established");
});

app.get('/get/shops', (req, res) => {
  connection.query('select * from shops', (err, rsl) => {
    if (err) {
      res.status(500).json({ message: 'Error getting shops' });
    } else {
      res.json(rsl);
    }
  });
});

app.get('/get/shops/:id', (req, res) => {
  const id = req.params.id;

  connection.query('select * from shops where id = ?', id, (err, rsl) => {
    if (err) {
      res.status(404).json({ message: 'Shop not found' });
    } else {  
      res.json(rsl[0]);
    }
  });
});

app.post('/post/shops', (req, res) => {
  const name = req.body.names;
  const location = req.body.location;
  const contact_number = req.body.contact_number;
  const opening_hours = req.body.opening_hours;
  const owner_name = req.body.owner_name;
  const website = req.body.website;
  const description = req.body.description;
  const rating = req.body.rating;

  connection.query('insert into shops (name, location, contact_number, opening_hours, owner_name, website, description, rating) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', [name, location, contact_number, opening_hours, owner_name, website, description, rating], (err, rsl) => {
    if (err) {
      res.status(400).json({ message: 'Error creating shop' });
    } else {
      res.status(201).json({ message: 'Shop created successfully' });
    }
  });
});



app.put('/put/shops/:id', (req, res) => {
  const id = req.params.id;
  const name = req.body.names;
  const location = req.body.location;
  const contact_number = req.body.contact_number;
  const opening_hours = req.body.opening_hours;
  const owner_name = req.body.owner_name;
  const website = req.body.website;
  const description = req.body.description;
  const rating = req.body.rating;

  connection.query('UPDATE shops SET name = ?, location = ?, contact_number = ?, opening_hours = ?, owner_name = ?, website = ?, description = ?, rating = ? WHERE id = ?', [name, location, contact_number, opening_hours, owner_name, website, description, rating, id], (err, rsl) => {
    if (err) {
      res.status(400).json({ message: 'Error updating shop' });
    } else {
      res.json({ message: 'Shop updated successfully' });
    }
  });
});


app.delete('/delete/shops/:id', (req, res) => {
  const id = req.params.id;

  connection.query('DELETE FROM shops WHERE id = ?', id, (err, rsl) => {
    if (err) {
      res.status(404).json({ message: 'Shop not found' });
    } else {
      res.json({ message: 'Shop deleted successfully' });
    }
  });
});


app.listen(5000, () => {
  console.log(`Server running on port ${5000}!`);
});
