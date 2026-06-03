const express = require('express')
const router = express.Router()

let products = [
  { id: 1, name: 'Hoodie', price: 40 },
  { id: 2, name: 'Sneakers', price: 80 },
]

// GET
router.get('/', (req, res) => {
  res.json(products)
})

// POST
router.post('/', (req, res) => {
  const newProduct = req.body
  newProduct.id = products.length + 1

  products.push(newProduct)

  res.json(newProduct)
})

module.exports = router
