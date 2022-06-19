-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-06-2022 a las 19:29:39
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
-- Base de datos: `recetario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, 'Mousse de chocolate', 'Curiosidades e historia', 'La mousse de chocolate es un postre original de la cocina francesa, ahora conocido internacionalmente. Consiste en una crema suave y espumosa, que se sirve sola o se utiliza para rellenar tartas dulces.\r\nEste postre se puede elaborar con chocolate blanco o negro, dependiendo el resultado final de la calidad del chocolate empleado. Sus principales ingredientes son huevo, azúcar, chocolate, mantequilla o nata. La elección de la nata o de la mantequilla determinará el resultado final. Si se quiere mantener el fuerte sabor a cacao del chocolate negro, se empleará mantequilla. Si en lugar de mantequilla se emplea nata, el sabor final será más suave y se parecerá más al chocolate con leche.\r\nPor la gran cantidad de nata o de mantequilla, la mousse de chocolate tiene un alto valor calórico.\r\nLa mousse aparece por primera vez en un recetario de 1755, Les soupers de la cour, del cocinero francés Menon. Describía tres mousses, de café, de chocolate y de azafrán, que se hacían con nata batida a la que se podía añadir claras de huevo. Se servían en unos vasitos de plata o vidrio que recomendaba guardar en hielo un par de horas hasta el momento de consumirlas, en un recipiente de hojalata hecho al uso', 'bmhca5ji8olrzdyfics5'),
(2, 'Lemon Pie', 'Un poco de historia', 'Esta receta es tradicional de las cocinas de Francia, Estados Unidos y el Reino Unido, si bien se conoce en muchos otros lugares. Se consume como postre o como parte de la merienda.\r\nEl lemon pie es más bien una tarta, es decir, una base de masa y un relleno. Como su nombre lo indica está hecha con limón, más bien con el jugo del limón, azúcar y huevos. Todo eso mezclado hace el famoso custard, el relleno cremoso amarillo que es tan típico del lemon pie. Acá viene bien una aclaración: el lemon pie original, el clásico, el infaltable de cada banquete que daba la reina Isabel I de Inglaterra, no necesariamente lleva esa cobertura blanca esponjosa con que lo conocemos en la actualidad.\r\nEn el siglo XIX, era tan apreciada como símbolo de riqueza y bondad que habitualmente era servida como postre a la realeza', 'ttvd030fo21lmiunwjxk'),
(3, 'Flan', 'Origen', 'Su origen se remonta a siglos antes de Cristo, y ya era elaborado con huevo como ingrediente principal de la receta, por fenicios, griegos y romanos, que entonces lo llamaban Tyropatina.\r\nDurante la Edad Media se continuó consumiendo, sobre todo en Cuaresma, cuando ciertos alimentos estaban prohibidos, y fue entonces cuando comenzó a elaborarse con azúcar y caramelo, tal como lo conocemos ahora.\r\nAunque fue a partir del siglo VII que empezó a popularizarse en diferentes países, ya que en ese momento se le dio el nombre de Flan.', 'l7ce7g4ceevdngwfxiyw'),
(4, 'Brownies', 'sadas', 'ada', 'brw3wbyrjql3ct7zivxf'),
(5, 'Panqueques con dulce de leche', 'adsa', 'sdad', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Paloma', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Flavia', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'Ana', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
