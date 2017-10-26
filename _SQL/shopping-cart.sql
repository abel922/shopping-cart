-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2017 a las 19:24:52
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping-cart`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2017_10_24_120723_create_user_table', 2),
(7, '2017_10_24_113636_create_products_table', 3),
(8, '2017_10_24_141945_create_user_table', 3),
(9, '2017_10_26_150341_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `cart`, `address`, `name`, `payment_id`) VALUES
(1, '2017-10-26 15:15:05', '2017-10-26 15:15:05', 1, 'O:8:"App\\Cart":3:{s:5:"items";a:4:{i:3;a:3:{s:3:"qty";i:1;s:5:"price";i:60;s:4:"item";O:11:"App\\Product":26:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:3;s:10:"created_at";s:19:"2017-10-26 17:12:30";s:10:"updated_at";s:19:"2017-10-26 17:12:30";s:9:"imagePath";s:78:"http://kh13.com/forum/uploads/gallery/album_1295/gallery_37033_1295_335885.jpg";s:5:"title";s:18:"Kingdom Hearts 2.8";s:11:"description";s:110:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!";s:5:"price";i:60;}s:11:"\0*\0original";a:7:{s:2:"id";i:3;s:10:"created_at";s:19:"2017-10-26 17:12:30";s:10:"updated_at";s:19:"2017-10-26 17:12:30";s:9:"imagePath";s:78:"http://kh13.com/forum/uploads/gallery/album_1295/gallery_37033_1295_335885.jpg";s:5:"title";s:18:"Kingdom Hearts 2.8";s:11:"description";s:110:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!";s:5:"price";i:60;}s:10:"\0*\0changes";a:0:{}s:8:"\0*\0casts";a:0:{}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:10:"timestamps";b:1;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}i:4;a:3:{s:3:"qty";i:1;s:5:"price";i:100;s:4:"item";O:11:"App\\Product":26:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:4;s:10:"created_at";s:19:"2017-10-26 17:12:30";s:10:"updated_at";s:19:"2017-10-26 17:12:30";s:9:"imagePath";s:121:"https://www.rightstufanime.com/images/productImages/4543112934024_figure-super-saiyan-son-gohan-dragon-ball-z-primary.jpg";s:5:"title";s:19:"Gohan Dragon Ball Z";s:11:"description";s:110:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!";s:5:"price";i:100;}s:11:"\0*\0original";a:7:{s:2:"id";i:4;s:10:"created_at";s:19:"2017-10-26 17:12:30";s:10:"updated_at";s:19:"2017-10-26 17:12:30";s:9:"imagePath";s:121:"https://www.rightstufanime.com/images/productImages/4543112934024_figure-super-saiyan-son-gohan-dragon-ball-z-primary.jpg";s:5:"title";s:19:"Gohan Dragon Ball Z";s:11:"description";s:110:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!";s:5:"price";i:100;}s:10:"\0*\0changes";a:0:{}s:8:"\0*\0casts";a:0:{}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:10:"timestamps";b:1;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}i:12;a:3:{s:3:"qty";i:1;s:5:"price";i:30;s:4:"item";O:11:"App\\Product":26:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:12;s:10:"created_at";s:19:"2017-10-26 17:12:30";s:10:"updated_at";s:19:"2017-10-26 17:12:30";s:9:"imagePath";s:76:"https://i.pinimg.com/originals/16/31/c1/1631c1078fd33a24896d523756adc283.jpg";s:5:"title";s:13:"Pelucha Flash";s:11:"description";s:110:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!";s:5:"price";i:30;}s:11:"\0*\0original";a:7:{s:2:"id";i:12;s:10:"created_at";s:19:"2017-10-26 17:12:30";s:10:"updated_at";s:19:"2017-10-26 17:12:30";s:9:"imagePath";s:76:"https://i.pinimg.com/originals/16/31/c1/1631c1078fd33a24896d523756adc283.jpg";s:5:"title";s:13:"Pelucha Flash";s:11:"description";s:110:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!";s:5:"price";i:30;}s:10:"\0*\0changes";a:0:{}s:8:"\0*\0casts";a:0:{}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:10:"timestamps";b:1;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}i:10;a:3:{s:3:"qty";i:1;s:5:"price";i:23;s:4:"item";O:11:"App\\Product":26:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:10;s:10:"created_at";s:19:"2017-10-26 17:12:30";s:10:"updated_at";s:19:"2017-10-26 17:12:30";s:9:"imagePath";s:165:"http://www.fotogramas.es/var/ezflow_site/storage/images/cinefilia/75-posters-de-peliculas-para-decorar-tu-casa/frameimage/46830861-1-esl-ES/frameimage_ampliacion.jpg";s:5:"title";s:18:"Poster Darth Vader";s:11:"description";s:110:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!";s:5:"price";i:23;}s:11:"\0*\0original";a:7:{s:2:"id";i:10;s:10:"created_at";s:19:"2017-10-26 17:12:30";s:10:"updated_at";s:19:"2017-10-26 17:12:30";s:9:"imagePath";s:165:"http://www.fotogramas.es/var/ezflow_site/storage/images/cinefilia/75-posters-de-peliculas-para-decorar-tu-casa/frameimage/46830861-1-esl-ES/frameimage_ampliacion.jpg";s:5:"title";s:18:"Poster Darth Vader";s:11:"description";s:110:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!";s:5:"price";i:23;}s:10:"\0*\0changes";a:0:{}s:8:"\0*\0casts";a:0:{}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:10:"timestamps";b:1;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}}s:8:"totalQty";i:4;s:10:"totalPrice";i:213;}', 'C/Flores Nº1 Escalera 1 B-D', 'Abel García Luis', 'ch_1BHEwbCx92djmuQdhABQtDYQ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagePath` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `imagePath`, `title`, `description`, `price`) VALUES
(1, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg', 'Harry Potter', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 10),
(2, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'https://images-na.ssl-images-amazon.com/images/I/41D8xofbLNL.jpg', 'Funko Ryuk', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 22),
(3, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'http://kh13.com/forum/uploads/gallery/album_1295/gallery_37033_1295_335885.jpg', 'Kingdom Hearts 2.8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 60),
(4, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'https://www.rightstufanime.com/images/productImages/4543112934024_figure-super-saiyan-son-gohan-dragon-ball-z-primary.jpg', 'Gohan Dragon Ball Z', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 100),
(5, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'https://cdn.playmax.mx/img/c/400/1/1448300621/331.jpg', 'Supernatural', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 100),
(6, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'https://ae01.alicdn.com/kf/HTB1jJFCQVXXXXbeXFXXq6xXFXXXL/21-estilos-Capit-n-Am-rica-Aptitud-camiseta-superman-camiseta-transpirable-ropa-de-Entrenamiento-de-los.jpg', 'Camiseta Superman', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 36),
(7, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'https://i.pinimg.com/736x/fe/09/8e/fe098ee7181e1dfcf692e0145d0491cd.jpg', 'Colgante Targaryen', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 43),
(8, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'http://i68.tinypic.com/2gybrq1.jpg', 'Metal Gear 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 70),
(9, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'https://images-na.ssl-images-amazon.com/images/I/51mAejSjP6L._SL1066_.jpg', 'Lámpara Thor', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 45),
(10, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'http://www.fotogramas.es/var/ezflow_site/storage/images/cinefilia/75-posters-de-peliculas-para-decorar-tu-casa/frameimage/46830861-1-esl-ES/frameimage_ampliacion.jpg', 'Poster Darth Vader', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 23),
(11, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'http://los40mx00.epimg.net/los40/imagenes/2016/01/12/album/1452624945_763226_1452625092_album_normal.jpg', 'Tacones Batman', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 55),
(12, '2017-10-26 15:12:30', '2017-10-26 15:12:30', 'https://i.pinimg.com/originals/16/31/c1/1631c1078fd33a24896d523756adc283.jpg', 'Pelucha Flash', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `email`, `password`, `remember_token`) VALUES
(1, '2017-10-26 15:13:28', '2017-10-26 15:13:28', 'abel19922@gmail.com', '$2y$10$i4vKefIP73KKpUYza43qtOxDXjNlsQC4gfHMIrXAWv.utBfekwsz2', 'aoMLYTHSxoHZ5xtHWbZUELaxSlrHkyVpMl5ULfE3QZVKa1Jq7OTWBVSWtfSY');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
