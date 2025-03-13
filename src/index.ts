import express from 'express'
import bodyParser from 'body-parser';

const app = express()
const port = 1488;

app.use(bodyParser.urlencoded({extended: true}))
app.use(bodyParser.json())


app.get('', (req, res) => {
    res.json({'message': 'Gachimuchi API'})
})


app.listen(port, () => {
    console.log(`Server listening on port http://localhost:${port}`)
})


 
