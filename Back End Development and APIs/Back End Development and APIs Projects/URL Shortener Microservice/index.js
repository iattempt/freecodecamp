require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();

// Basic Configuration
const port = process.env.PORT || 3000;

app.use(bodyParser.urlencoded({ extended: false }));

app.use(cors());

app.use('/public', express.static(`${process.cwd()}/public`));

app.get('/', function(req, res) {
  res.sendFile(process.cwd() + '/views/index.html');
});

// Your first API endpoint
app.get('/api/hello', function(req, res) {
  res.json({ greeting: 'hello API' });
});

const shortUrlMap = []

app.get('/api/shorturl/:index', function(req, res) {
  if (shortUrlMap[req.params.index]) {
    res.redirect(shortUrlMap[req.params.index])
  } else {
    res.json({ error: "Invalid URL" })
  }
});

app.post('/api/shorturl', function(req, res) {
  try {
    const original_url = new URL(req.body.url)
    if (original_url.protocol !== 'http:') throw Error()
    const short_url = (shortUrlMap.push(original_url) - 1).toString()
    res.json({ original_url: original_url.toString(), short_url });
  } catch {
    res.json({ error: "Invalid URL" })
  }
});


app.listen(port, function() {
  console.log(`Listening on port ${port}`);
});
