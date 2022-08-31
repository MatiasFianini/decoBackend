-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-08-2022 a las 01:42:42
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `decoexp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `image`) VALUES
(1, 'Design Toscano Golden Clock', 5000, 'Classical Greek - With beautiful faux antique gold gilt and at over a foot-and-a-half tall, this clock makes a statement no mater where it\'s placed\r\nHigh Quality Decor - Hand-cast using real crushed stone bonded with durable designer resin, our detailed Chateau Chambord mantel clock is then fitted with a quality quartz clock with roman numerals and finished with a faux antique gold gilt for proud display in your home', 'https://m.media-amazon.com/images/I/91OPoxz2omL._AC_SL1500_.jpg'),
(2, 'Sonia Contemporary Art Deco Table', 1200, 'Sonia luxe table lamps set of 2 from the 360 Lighting Brand.\r\nGold finish over metal construction. Rectangular white shades.\r\nComes with dual USB ports in the base for charging smartphones and other devices.', 'https://m.media-amazon.com/images/I/61joJgXIMQL._AC_SL1500_.jpg'),
(3, 'Design Toscano The Desiree Art Deco Lighted Sculpture', 3200, 'Dimensions: 5\"Wx8\"Dx16\"H 5 lbs.\r\nArt Deco style maiden base\r\nEach piece is individually hand-painted in a faux ivory and gold finish\r\nTakes one 25 watt bulb or CFL/LED equivalent', 'https://m.media-amazon.com/images/I/81Jv8YOc4gL._AC_SL1500_.jpg'),
(4, 'Estatua ATLAS Cargando Esfera', 850, 'Crafted by master artisan using high quality designer resin and Cold Cast Bronze method\r\nCold Cast Bronze is the casting method of mixing bronze material and resin together in order to create detailed statues with metallic surface\r\nPackaged with gift box and bottom covered by felt to protect tabletop and display surfaces', 'https://m.media-amazon.com/images/I/71rILgjFj7L._AC_SL1500_.jpg'),
(5, 'Aplique lampara Art Deco Minimalista', 3600, '1. Premium quality: The lamp is composed of pure iron, linen and adopts advanced technology, ideal for decoration\r\n2. LIGHT SOURCE: 110V-240V, 50 / 60HZ, This lamp works well with incandescent bulbs or LEDs with standard E14 base.Note: ( Does not contain light source)\r\n3. Minimalistic design: the elegant and elegant look of this bedroom lamp elevates the aesthetics of your home.The size and design make this accent lamp a wonderful accessory for cottages and professional offices.', 'https://m.media-amazon.com/images/I/41CRB82iuYL._AC_.jpg'),
(19, 'Wall sculpture Poseidon', 20000, 'Dimensions: 9.5\"Wx6.5\"Dx17\"H 4 lbs.\r\nHand-cast using real crushed stone bonded with high quality designer resin\r\nEach piece is individually hand-finished by our artisans\r\nExclusive to the Design Toscano brand and perfect for your home or garden\r\nPerfect for display in home or garden gallery', 'https://m.media-amazon.com/images/I/71fJbpMTP+L._AC_SL1500_.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(80) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(3, 'matias', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'Carlos', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
