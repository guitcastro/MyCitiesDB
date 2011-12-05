-- phpMyAdmin SQL Dump
-- version 3.4.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 05/12/2011 às 02h53min
-- Versão do Servidor: 5.5.18
-- Versão do PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `sol`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(60) NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `acronym` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contry_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `acronym`) VALUES
(0, 'Acre', 1, 'AC\n'),
(1, 'Alagoas', 1, 'AL\n'),
(2, 'Amapá', 1, 'AP\n'),
(3, 'Amazonas', 1, 'AM\n'),
(4, 'Bahia', 1, 'BA\n'),
(5, 'Ceará', 1, 'CE\n'),
(6, 'Distrito Federal', 1, 'DF\n'),
(7, 'Espírito Santo', 1, 'ES\n'),
(8, 'Goiás', 1, 'GO\n'),
(9, 'Maranhão', 1, 'MA\n'),
(10, 'Mato Grosso', 1, 'MT\n'),
(11, 'Mato Grosso do Sul', 1, 'MS\n'),
(12, 'Minas Gerais', 1, 'MG\n'),
(13, 'Pará', 1, 'PA\n'),
(14, 'Paraíba', 1, 'PB\n'),
(15, 'Paraná', 1, 'PR\n'),
(16, 'Pernambuco', 1, 'PE\n'),
(17, 'Piauí', 1, 'PI\n'),
(18, 'Rio de Janeiro', 1, 'RJ\n'),
(19, 'Rio Grande do Norte', 1, 'RN\n'),
(20, 'Rio Grande do Sul', 1, 'RS\n'),
(21, 'Rondônia', 1, 'RO\n'),
(22, 'Roraima', 1, 'RR\n'),
(23, 'Santa Catarina', 1, 'SC\n'),
(24, 'São Paulo', 1, 'SP\n'),
(25, 'Sergipe', 1, 'SE\n'),
(26, 'Tocantins', 1, 'TO');

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `contry_id_state` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
