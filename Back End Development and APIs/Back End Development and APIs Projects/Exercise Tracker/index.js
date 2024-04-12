const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const cors = require('cors')
require('dotenv').config()

app.use(bodyParser.urlencoded({ extended: false }))
app.use(cors())
app.use(express.static('public'))
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/views/index.html')
});


/**
 * @type {{ id: string; name: string; exercises: { description: string; duration: number; date: number }[] }[]}
 */
const users = []
let id = 0
app.post('/api/users', (req, res) => {
  const user = { id: (id++).toString(), name: req.body.username, exercises: [] }
  users.push(user)
  res.json({ _id: user.id, username: user.name })
})

app.get('/api/users', (req, res) => {
  res.json(users.map(user => ({ _id: user.id, username: user.name })))
})

app.post('/api/users/:_id/exercises', (req, res) => {
  const user = users.find(user => user.id === req.params._id)
  if (user) {
    const exercise = {
      description: req.body.description,
      duration: parseInt(req.body.duration, 10),
      date: req.body.date ? new Date(req.body.date).getTime() : Date.now()
    }
    user.exercises.push(exercise)
    res.json({
      _id: user.id,
      username: user.name,
      description: exercise.description,
      duration: exercise.duration,
      date: new Date(exercise.date).toDateString()
    })
  }
})

app.get('/api/users/:_id/logs', (req, res) => {
  const user = users.find(user => user.id === req.params._id)
  if (user) {
    res.json({
      count: user.exercises.length,
      log: user.exercises
        .filter(exercise => req.query.from ? new Date(req.query.from).getTime() <= exercise.date : true)
        .filter(exercise => req.query.to ? exercise.date <= new Date(req.query.to).getTime() : true)
        .slice(0, req.query.limit ?? Infinity)
        .map(exercise => {
          return {
            ...exercise,
            date: new Date(exercise.date).toDateString()
          }
        })
    })
  }
})


const listener = app.listen(process.env.PORT || 3000, () => {
  console.log('Your app is listening on port ' + listener.address().port)
})
