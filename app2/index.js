"use strict";
require("newrelic");
const express = require("express");

// Constants
const PORT = 3001;

// App
const app = express();
app.get("/", (req, res) => {
  res.send("Hello World from 3001");
});

app.listen(PORT, () => {
  console.log(`Running on http://localhost:${PORT}`);
});
