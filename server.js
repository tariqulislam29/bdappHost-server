const express = require('express');
const cors = require('cors');
const app = express();
const port =  5000;
const routes = require("./Routes/index");
// middleware
app.use(cors());
app.use(express.json());


app.use("/", routes);

app.get('/', (req, res) => {
    res.send('Running Server');
});
app.get('/check', (req, res) => {
    res.send('Running  Server');
});



app.listen(port, () => {
    console.log('Running  Server on port', port);
})