-- =====================================
-- 📦 PRODUCTOS
-- =====================================

-- Ver todos los productos
SELECT * FROM products;

-- Buscar producto por ID
SELECT * FROM products WHERE id = 1;

-- Buscar productos por nombre
SELECT * FROM products WHERE name LIKE '%shirt%';

-- =====================================
-- 💰 PRECIO Y STOCK
-- =====================================

-- Top 5 productos más caros
SELECT TOP 5 * FROM products ORDER BY price DESC;

-- Top 5 productos más baratos
SELECT TOP 5 * FROM products ORDER BY price ASC;

-- Productos con poco stock (menos de 20)
SELECT * FROM products WHERE stock < 20;

-- =====================================
-- 📊 ANÁLISIS BÁSICO
-- =====================================

-- Total de productos
SELECT COUNT(*) AS total_productos FROM products;

-- Promedio de precio
SELECT AVG(price) AS promedio_precio FROM products;

-- Precio máximo
SELECT MAX(price) AS precio_maximo FROM products;

-- Precio mínimo
SELECT MIN(price) AS precio_minimo FROM products;

-- =====================================
-- 📦 ÓRDENES (para futuro)
-- =====================================

-- Ver todas las órdenes
SELECT * FROM orders;

-- Ver órdenes de un usuario
SELECT * FROM orders WHERE user_id = 1;

-- Total de ingresos (ventas)
SELECT SUM(total) AS total_ventas FROM orders;

-- =====================================
-- 🧾 DETALLE DE ÓRDENES
-- =====================================

-- Ver productos dentro de una orden
SELECT * FROM order_details WHERE order_id = 1;

-- =====================================
-- 🔗 JOINS (nivel siguiente)
-- =====================================

-- Ver pedidos con nombre de usuario
SELECT orders.id, users.name, orders.total
FROM orders
JOIN users ON orders.user_id = users.id;

-- Ver productos vendidos en pedidos
SELECT od.order_id, p.name, od.quantity
FROM order_details od
JOIN products p ON od.product_id = p.id;
