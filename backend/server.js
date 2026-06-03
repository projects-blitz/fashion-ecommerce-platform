const express = require('express')
const app = express()

const productRoutes = require('./routes/productRoutes')

const PORT = 3000

// Middleware para recibir JSON (IMPORTANTE)
app.use(express.json())

// Ruta base
app.get('/', (req, res) => {
  res.send('API is running 🚀')
})

// Rutas de productos
app.use('/products', productRoutes)

// Servidor
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`)
})
