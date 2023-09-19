CREATE TABLE IF NOT EXISTS `configuracion` (
  `id_config` int NOT NULL AUTO_INCREMENT,
  `identidad` varchar(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `mensaje` text NOT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_config`)
) ENGINE=InnoDB AUTO_INCREMENT=2;

-- Volcando datos para la tabla shop.configuracion: ~1 rows (aproximadamente)
INSERT INTO `configuracion` (`id_config`, `identidad`, `nombre`, `telefono`, `correo`, `direccion`, `mensaje`, `facebook`) VALUES
	(1, '1315908671', 'KM Compu', '0999289203', 'kpml07@hotmail.com', 'Manta - Ecuador', 'GRACIAS POR SU PREFERENCIA', 'URL');

-- Volcando estructura para tabla shop.detalle_compra
CREATE TABLE IF NOT EXISTS `detalle_compra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_producto` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_producto` (`id_producto`),
  KEY `id_pedido` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=6;

-- Volcando datos para la tabla shop.detalle_compra: ~5 rows (aproximadamente)
INSERT INTO `detalle_compra` (`id`, `id_pedido`, `id_producto`, `nombre`, `precio`, `cantidad`) VALUES
	(1, 1, 3, 'CELULAR SANSUNG A12', 4.00, 1),
	(2, 1, 4, 'IMPRESORA EPSON', 6.00, 1),
	(3, 1, 1, 'DISEÑO WEB', 700.00, 1),
	(4, 2, 2, 'LAPTOP CORE I7', 3.00, 1),
	(5, 2, 3, 'CELULAR SANSUNG A12', 4.00, 1);

-- Volcando estructura para tabla shop.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaccion` varchar(20)  NOT NULL,
  `fecha` date NOT NULL,
  `nombre` varchar(150) DEFAULT '',
  `direccion` varchar(255) DEFAULT '',
  `telefono` varchar(50) DEFAULT '',
  `estado` int NOT NULL DEFAULT '1',
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3;

-- Volcando datos para la tabla shop.pedidos: ~2 rows (aproximadamente)
INSERT INTO `pedidos` (`id`, `transaccion`, `fecha`, `nombre`, `direccion`, `telefono`, `estado`, `total`) VALUES
	(1, '7S514222BB822971B', '2023-02-08', 'Daniel Delgado', 'Calle 9 de octubre', '0996854051', 0, 17.00),
	(2, '5AN5435384598072U', '2023-02-08', 'Miriam Cantos', 'Calle 13 Av 14', '0999999999', 0, 7.00);

-- Volcando estructura para tabla shop.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion_corta` text NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `estado` int NOT NULL DEFAULT '1',
  `foto_destacada` varchar(50)  DEFAULT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=8;

-- Volcando datos para la tabla shop.productos: ~7 rows (aproximadamente)
INSERT INTO `productos` (`id_producto`, `titulo`, `descripcion_corta`, `precio_normal`, `stock`, `estado`, `foto_destacada`, `fecha_create`) VALUES
	(1, 'PC GAMER', 'Core i7, Video 1650, 16GB RAM, 500GB SSD', 700.00, 0, 1, '1.JPG', '2023-02-08 18:13:59'),
	(2, 'LAPTOP CORE I7', '8GB RAM, Video 1650, 1TB SSD', 3.00, 13, 1, '2.JPG', '2023-02-08 18:29:23'),
	(3, 'CELULAR SANSUNG A12', 'CAMARA DE 48 MPX', 4.00, 14, 1, '3.JPG', '2023-02-08 18:29:23'),
	(4, 'IMPRESORA CANON', 'TAMAÑO A4 FULL COLOR', 6.00, 43, 1, '4.JPG', '2023-02-08 18:26:44');

-- Volcando estructura para tabla shop.slider
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `titulo` text,
  `descripcion` text,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6;

-- Volcando datos para la tabla shop.slider: ~3 rows (aproximadamente)
--INSERT INTO `slider` (`id`, `imagen`, `titulo`, `descripcion`, `estado`) VALUES
--	(1, '1.jpg', 'APROVECHE LAS OFERTAS', 'TODA LAS COMPRAS VIENEN CON UN REGALO', 1),


-- Volcando estructura para tabla shop.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(50) NOT NULL DEFAULT 'avatar.svg',
  `fecha_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_update` timestamp NULL DEFAULT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4;

-- Volcando datos para la tabla shop.usuarios: ~3 rows (aproximadamente)
INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo`, `telefono`, `clave`, `perfil`, `fecha_create`, `fecha_update`, `estado`) VALUES
	(1, 'Paul Muñoz', 'kpml07@hotmail.com ', '0999289203', '$2y$10$PuuKkm6GYFYhDserwrlg5e4Pwz5C89v9PFg8LreX3vKRGo4lgXqsG', '20221025000917.jpg', '2023-08-02 09:14:46', NULL, 1);