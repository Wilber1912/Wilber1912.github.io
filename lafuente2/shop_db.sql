-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2024 a las 04:56:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shop_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(56, 32, 3, 'Uva', 20, 1, 'Uva.jpg'),
(57, 32, 4, 'Fresa', 2, 1, 'fresa.jpg'),
(58, 32, 5, 'Piña', 40, 1, 'piña_g.jpg'),
(59, 32, 25, 'Apio', 2, 1, 'apio.jpg'),
(60, 34, 26, 'Ajo', 2, 1, 'ajo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(8, 33, 'vitols', 'vicctor.cc@gmail.com', '8299806334', 'como que lo guineo tan a do dolare balbarazo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(12, 32, 'Wilber', '8298281093', 'admin01@gmail.com', 'paypal', 'flat no. piso 1 calle 10 santiago NA rep.dom - 51000', ', Banana ( 1 ), Fresa ( 1 )', 4, '30-Jan-2024', 'completed'),
(13, 32, 'servidorjm', '1289329', 'admin01@gmail.com', 'credit card', 'flat no. piso 1 calle 10 santiago NA rep.dom - 51000', ', Sandía ( 3 ), Uva ( 3 ), Fresa ( 3 )', 69, '30-Jan-2024', 'completed');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(2, 'Banana', 'fruits', 'La banana es una excelente fuente de potasio y energía.', 2, 'banana.jpg'),
(3, 'Uva', 'fruits', 'Las uvas son ricas en antioxidantes y beneficiosas para la salud del corazón.', 20, 'Uva.jpg'),
(4, 'Fresa', 'Fruits', 'Las fresas son bajas en calorías y ricas en vitamina C.', 2, 'fresa.jpg'),
(5, 'Piña', 'Fruits', 'La piña es refrescante y contiene bromelina, una enzima digestiva.', 40, 'piña_g.jpg'),
(6, 'Mango', 'Fruits', 'El mango es una fruta tropical deliciosa y rica en vitamina A.', 4, 'mango.jpg'),
(7, 'Kiwi', 'Fruits', 'El kiwi es una excelente fuente de vitamina C y fibra.', 2, 'kiwi.jpg'),
(8, 'Cereza', 'Fruits', 'Las cerezas son antioxidantes naturales y pueden ayudar en el sueño.', 4, 'cereza.jpg'),
(9, 'Sandía', 'Fruits', 'La sandía es hidratante y baja en calorías.', 1, 'SANDIA.jpg'),
(10, 'Pera', 'Fruits', 'La pera es rica en fibra y ayuda en la digestión.', 2, 'pera.jpg'),
(11, 'Melón', 'Fruits', 'El melón es dulce y refrescante, perfecto para el verano.', 3, 'melon.jpg'),
(12, 'Ciruela', 'Fruits', 'Las ciruelas son ricas en antioxidantes y vitamina K.', 2, 'ciruelas-_1.jpg'),
(13, 'Naranja', 'Fruits', 'Las naranjas son una excelente fuente de vitamina C y fibra.', 2, 'Naranja.jpg'),
(14, 'Frutas del Bosque', 'Fruits', 'Mezcla de frutas del bosque como arándanos y moras.', 4, 'frutas-del-bosque.jpg'),
(15, 'Granada', 'Fruits', 'La granada es rica en antioxidantes y beneficia la salud cardiovascular.', 5, 'grenada.jpg'),
(16, 'Coco', 'Fruits', 'El coco es rico en electrolitos y aporta un sabor tropical.', 3, 'coco.jpg'),
(19, 'Limón', 'Fruits', 'El limón es refrescante y una excelente fuente de vitamina C.', 2, 'limon.jpg'),
(20, 'Melocotón', 'Fruits', 'El melocotón es jugoso y lleno de antioxidantes y fibra.', 3, 'melocoton.png'),
(24, 'Manzana', 'Fruits', 'La manzana es una fruta muy hidratante. Es rica en vitaminas, fibra y oligoelementos de origen mineral. ', 12, 'Manzanas-Rojas_.jpg'),
(25, 'Apio', 'vegitables', 'Tallos crujientes y refrescantes, ideales para ensaladas, sopas y jugos.', 2, 'apio.jpg'),
(26, 'Ajo', 'vegitables', 'Saborizante esencial para la cocina, con propiedades medicinales.', 2, 'ajo.jpg'),
(27, 'Berenjena', 'vegitables', 'Versátil y deliciosa, ideal para guisos, ensaladas y rellenos.', 3, 'berenjena.jpg'),
(28, 'Brocoli', 'vegitables', 'Nutritivo y rico en vitaminas, perfecto para saltear o al vapor.', 3, 'brocoli.png'),
(29, 'Aullama', 'vegitables', 'Deliciosa y versátil, ideal para cremas, sopas y purés.', 4, 'aullama.jpg'),
(30, 'Cebolla', 'vegitables', 'Ingrediente esencial en la cocina, con propiedades antiinflamatorias.', 1, 'cebolla.png'),
(31, 'Hongo', 'vegitables', 'Sabor único y textura carnosa, ideal para saltear o rellenar.', 3, 'hongo.jpg'),
(32, 'Coliflor', 'vegitables', 'Versátil y rica en fibra, ideal para ensaladas, cremas y arroces.', 3, 'coli.png'),
(33, 'Esparragos', 'vegitables', 'Sabor delicado y textura crujiente, ideal para saltear o asar.', 50, 'esparragos.png'),
(34, 'Spinach', 'vegitables', 'Rica en hierro y vitaminas, ideal para ensaladas, salteados y tortillas.', 2, 'https://www.istockphoto.com/es/fotos/espinaca'),
(35, 'Tomate', 'vegitables', 'Versátil y delicioso, ideal para salsas, ensaladas y guisos.', 2, 'tomate.png'),
(36, 'Lechuga', 'vegitables', 'Base fresca para ensaladas y sándwiches.', 1, 'lechuga.png'),
(37, 'Maiz', 'vegitables', 'Versátil y nutritivo, ideal para ensaladas, sopas y cremas.', 2, 'maiz.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(31, 'Wilber', 'wilberbrea19@gmail.com', 'c8bd3d1d327e81c176faa34c1d52436b', 'admin', '48687.jpg'),
(32, 'Admin 01', 'admin@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin', '48687.jpg'),
(33, 'Vitola', 'vicctor.cc@gmail.com', '86d2665b2060513a8207cdf8073e46a6', 'user', 'logo 2 flash.jpg'),
(34, 'Wilber', 'wiluser@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'cebolla-removebg-preview (1).png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(55, 32, 37, 'Maiz', 2, 'maiz.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
