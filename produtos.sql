-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Maio-2019 às 01:46
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `produtos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `codBarras` varchar(13) NOT NULL,
  `descricao` varchar(60) NOT NULL,
  `precoVenda` double NOT NULL,
  `custo` double NOT NULL,
  `estoqueAtual` int(11) NOT NULL,
  `estoqueMaximo` int(11) NOT NULL,
  `estoqueMinimos` int(11) NOT NULL,
  `unidade` varchar(20) NOT NULL,
  `Categoria` varchar(20) NOT NULL,
  `Fornecedor` varchar(20) NOT NULL,
  `url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`codBarras`, `descricao`, `precoVenda`, `custo`, `estoqueAtual`, `estoqueMaximo`, `estoqueMinimos`, `unidade`, `Categoria`, `Fornecedor`, `url`) VALUES
('7909352346343', 'MELANCIA', 4.5, 1.35, 55, 80, 15, 'KG', 'HORTIFRUTI', 'FRUTARIA LIVRE E LEV', 'img\\HORTIFRUTI.png'),
('7909352346817', 'MAÇA', 1.2, 0.36, 40, 80, 15, 'KG', 'HORTIFRUTI', 'FRUTARIA LIVRE E LEV', 'img\\HORTIFRUTI.png'),
('7909352361438', 'PERA', 2.7, 0.81, 70, 80, 15, 'KG', 'HORTIFRUTI', 'FRUTARIA LIVRE E LEV', 'img\\HORTIFRUTI.png'),
('7909352470901', 'CEBOLA', 0.85, 0.26, 52, 80, 15, 'KG', 'HORTIFRUTI', 'FRUTARIA LIVRE E LEV', 'img\\HORTIFRUTI.png'),
('7909352347340', 'TOMATE', 5.23, 1.57, 60, 80, 15, 'KG', 'HORTIFRUTI', 'FRUTARIA LIVRE E LEV', 'img\\HORTIFRUTI.png'),
('7909352361667', 'PEPINO', 0.98, 0.29, 16, 80, 15, 'KG', 'HORTIFRUTI', 'FRUTARIA LIVRE E LEV', 'img\\HORTIFRUTI.png'),
('7909352381382', 'BETERRABA', 2.89, 0.87, 65, 80, 15, 'KG', 'HORTIFRUTI', 'FRUTARIA LIVRE E LEV', 'img\\HORTIFRUTI.png'),
('7909352382112', 'BANANA', 1.69, 0.51, 35, 80, 15, 'KG', 'HORTIFRUTI', 'FRUTARIA LIVRE E LEV', 'img\\HORTIFRUTI.png'),
('7909352476378', 'BRAHMA 600ML', 2.3, 0.69, 15, 20, 3, 'UN', 'BEBIDAS', 'ATACADÃO', '0'),
('7909352472394', 'BUDWEISER PILSEN 330 ML', 3.89, 1.17, 12, 20, 3, 'UN', 'BEBIDAS', 'ATACADÃO', '0'),
('7909352480887', 'PETRA 330 ML', 2.9, 0.87, 7, 20, 3, 'UN', 'BEBIDAS', 'ATACADÃO', '0'),
('7909352495522', 'BURGUESA PILSEN 269 ML', 1.5, 0.45, 4, 20, 3, 'UN', 'BEBIDAS', 'ATACADÃO', '0'),
('7909352494143', 'PROIBIDA 350 ML', 1.79, 0.54, 9, 20, 3, 'UN', 'BEBIDAS', 'ATACADÃO', '0'),
('7909352484786', 'BISCOITO TRAQUINAS', 3.4, 1.02, 6, 20, 3, 'UN', 'BOLACHA', 'ATACADÃO', 'img\\BOLACHA.png'),
('7909352484915', 'BISCOITO TORTINHAS', 1.4, 0.42, 9, 20, 3, 'UN', 'BOLACHA', 'ATACADÃO', 'img\\BOLACHA.png'),
('7909352594096', 'BISCOITO BAUDUCCO RECHEADA', 5.8, 1.74, 12, 20, 3, 'UN', 'BOLACHA', 'ATACADÃO', 'img\\BOLACHA.png'),
('7909352421392', 'BISCOITO CHOCOOKY', 4.4, 1.32, 13, 20, 3, 'UN', 'BOLACHA', 'ATACADÃO', 'img\\BOLACHA.png'),
('7890096133897', 'BISCOITO AMANDITA', 3.7, 1.11, 18, 20, 3, 'UN', 'BOLACHA', 'ATACADÃO', 'img\\BOLACHA.png'),
('7890096146187', 'BOLO DE LARANJA', 56, 16.8, 17, 20, 3, 'UN', 'PADARIA', 'PADARIA CRISTO REI', '0'),
('7890096137376', 'BOLO DE MANDIOCA', 67, 20.1, 6, 20, 3, 'UN', 'PADARIA', 'PADARIA CRISTO REI', '0'),
('7890096150894', 'TORTA DE CHOCOLATE', 45, 13.5, 12, 20, 3, 'UN', 'PADARIA', 'PADARIA CRISTO REI', '0'),
('7890002447162', 'BOLO COM PRESTIGIO DE LEITE', 60, 18, 8, 20, 3, 'UN', 'PADARIA', 'PADARIA CRISTO REI', '0'),
('617847837661', 'UVA PASSA COM ALFACE', 80, 24, 4, 20, 3, 'UN', 'PADARIA', 'PADARIA CRISTO REI', '0'),
('7890096168554', 'RODO MAGICO LIMPA TUDO', 49.99, 15, 5, 20, 3, 'UN', 'UTENCILIOS', 'ATACADÃO', 'img\\UTENCILIOS.png'),
('7890096135570', 'RODO NOVIÇA', 14.4, 4.32, 9, 20, 3, 'UN', 'UTENCILIOS', 'ATACADÃO', 'img\\UTENCILIOS.png'),
('7890096139356', 'VASSOURA MÁGICA FLASHLIMP', 79.99, 24, 12, 20, 3, 'UN', 'UTENCILIOS', 'ATACADÃO', 'img\\UTENCILIOS.png'),
('7890096124260', 'VASSOURA DE PALHA', 12, 3.6, 15, 20, 3, 'UN', 'UTENCILIOS', 'ATACADÃO', 'img\\UTENCILIOS.png'),
('7890096141977', 'ALCOOL EM GEL', 8, 2.4, 17, 20, 3, 'UN', 'UTENCILIOS', 'ATACADÃO', 'img\\UTENCILIOS.png'),
('7892258279290', 'COCA COLA LATA', 2, 0.6, 4, 20, 3, 'UN', 'REFRIGERANTES', 'ATACADÃO', 'img\\REFRIGERANTES.png'),
('7890002449630', 'COCA COLA 2LT', 5.4, 1.62, 5, 20, 3, 'UN', 'REFRIGERANTES', 'ATACADÃO', 'img\\REFRIGERANTES.png'),
('7890096142998', 'MINEIRO 2LT', 2.5, 0.75, 5, 20, 3, 'UN', 'REFRIGERANTES', 'ATACADÃO', 'img\\REFRIGERANTES.png'),
('7890096132289', 'FANTA 2LT', 3.6, 1.08, 7, 20, 3, 'UN', 'REFRIGERANTES', 'ATACADÃO', 'img\\REFRIGERANTES.png'),
('7890096138038', 'RINCO 2LT', 2.3, 0.69, 8, 20, 3, 'UN', 'REFRIGERANTES', 'ATACADÃO', 'img\\REFRIGERANTES.png'),
('7909352974508', 'GUARANA JESUS 2LT', 1.4, 0.42, 9, 20, 3, 'UN', 'REFRIGERANTES', 'ATACADÃO', 'img\\REFRIGERANTES.png'),
('7890096135198', 'DOLLY 2LT', 1.6, 0.48, 12, 20, 3, 'UN', 'REFRIGERANTES', 'ATACADÃO', 'img\\REFRIGERANTES.png'),
('7890096128800', 'GUARANA ANTACTICA 2LT', 4.9, 1.47, 16, 20, 3, 'UN', 'REFRIGERANTES', 'ATACADÃO', 'img\\REFRIGERANTES.png'),
('7890096125366', 'PEPSI 2LT', 3.9, 1.17, 5, 20, 3, 'UN', 'REFRIGERANTES', 'ATACADÃO', 'img\\REFRIGERANTES.png'),
('7890096126776', 'TAYNAH 2LT', 0.89, 0.27, 20, 20, 3, 'UN', 'REFRIGERANTES', 'ATACADÃO', 'img\\REFRIGERANTES.png'),
('7890002472188', 'COXAO MOLE', 19.5, 5.85, 40, 60, 1, 'KG', 'AÇOUGUE', 'BRF', 'img\\AÇOUGUE.png'),
('7890096062968', 'PALETA', 16, 4.8, 36, 60, 1, 'KG', 'AÇOUGUE', 'BRF', 'img\\AÇOUGUE.png'),
('7890096130353', 'PATINHO', 20, 6, 12, 60, 1, 'KG', 'AÇOUGUE', 'BRF', 'img\\AÇOUGUE.png'),
('7890096143636', 'LINGUIÇA BOVINA', 11, 3.3, 20, 60, 1, 'KG', 'AÇOUGUE', 'BRF', 'img\\AÇOUGUE.png'),
('7890002471860', 'CONTRA FILE', 17.9, 5.37, 27, 60, 1, 'KG', 'AÇOUGUE', 'BRF', 'img\\AÇOUGUE.png'),
('7890096125694', 'MOIDA', 8, 2.4, 6, 60, 1, 'KG', 'AÇOUGUE', 'BRF', 'img\\AÇOUGUE.png'),
('7890096140215', 'ALCATRA', 14, 4.2, 8, 60, 1, 'KG', 'AÇOUGUE', 'BRF', 'img\\AÇOUGUE.png'),
('7909352467673', 'GALINHA', 4.5, 1.35, 51, 60, 1, 'KG', 'AÇOUGUE', 'BRF', 'img\\AÇOUGUE.png'),
('7890096152911', 'CUPIM', 26.9, 8.07, 5, 60, 1, 'KG', 'AÇOUGUE', 'BRF', 'img\\AÇOUGUE.png'),
('7909352945331', 'COXAO DURO', 3.9, 1.17, 43, 60, 1, 'KG', 'AÇOUGUE', 'BRF', 'img\\AÇOUGUE.png'),
('7909352257564', 'NOTEBOOK SANSUNG', 1087, 326.1, 16, 80, 3, 'UN', 'DISPOSITIVOS', 'AMERICANAS', 'img\\DISPOSITIVOS.png'),
('7890096067000', 'NOTEBOOK LENOVO', 3349.95, 1004.99, 30, 80, 3, 'UN', 'DISPOSITIVOS', 'AMERICANAS', 'img\\DISPOSITIVOS.png'),
('617847899140', 'NOTEBOOK APPLE', 2299, 689.7, 34, 80, 3, 'UN', 'DISPOSITIVOS', 'AMERICANAS', 'img\\DISPOSITIVOS.png'),
('617847878534', 'NOTEBOOK ASUS', 1324.33, 397.3, 51, 80, 3, 'UN', 'DISPOSITIVOS', 'AMERICANAS', 'img\\DISPOSITIVOS.png'),
('7890096168349', 'SMARTPHONE J1', 789, 236.7, 78, 80, 3, 'UN', 'DISPOSITIVOS', 'AMERICANAS', 'img\\DISPOSITIVOS.png'),
('617847878497', 'SMARTPHONE J2', 459, 137.7, 23, 80, 3, 'UN', 'DISPOSITIVOS', 'AMERICANAS', 'img\\DISPOSITIVOS.png'),
('7890096164471', 'SMARTPHONE J3', 2700, 810, 71, 80, 3, 'UN', 'DISPOSITIVOS', 'AMERICANAS', 'img\\DISPOSITIVOS.png'),
('7892258749373', 'SMARTPHONE J4', 1100, 330, 55, 80, 3, 'UN', 'DISPOSITIVOS', 'AMERICANAS', 'img\\DISPOSITIVOS.png'),
('7892258853414', 'SMARTPHONE J5', 1207.84, 362.35, 40, 80, 3, 'UN', 'DISPOSITIVOS', 'AMERICANAS', 'img\\DISPOSITIVOS.png'),
('7892258847994', 'SMARTPHONE J6', 369, 110.7, 12, 80, 3, 'UN', 'DISPOSITIVOS', 'AMERICANAS', 'img\\DISPOSITIVOS.png'),
('7892258980387', 'SMARTPHONE J7', 440, 132, 70, 80, 3, 'UN', 'DISPOSITIVOS', 'AMERICANAS', 'img\\DISPOSITIVOS.png'),
('7892258850321', 'BONECO HOMEM ARANHA', 20, 6, 245, 1000, 1, 'UN', 'INFANTIL', 'AMERICANAS', 'img\\INFANTIL.png'),
('7892258865356', 'BONECO BATMAN', 60, 18, 249, 1000, 1, 'UN', 'INFANTIL', 'AMERICANAS', 'img\\INFANTIL.png'),
('7892258745016', 'BONECO HOMEM DE FERRO', 70, 21, 365, 1000, 1, 'UN', 'INFANTIL', 'AMERICANAS', 'img\\INFANTIL.png'),
('7892258791143', 'BONECA BARBIE', 40, 12, 125, 1000, 1, 'UN', 'INFANTIL', 'AMERICANAS', 'img\\INFANTIL.png'),
('7892258878387', 'CARRO DE CONTROLE REMOTO', 56.6, 16.98, 156, 1000, 1, 'UN', 'INFANTIL', 'AMERICANAS', 'img\\INFANTIL.png'),
('7892258745009', 'CAVALINHOS', 35.14, 10.54, 234, 1000, 1, 'UN', 'INFANTIL', 'AMERICANAS', 'img\\INFANTIL.png'),
('7892258844146', 'PS4', 168.62, 50.59, 843, 1000, 1, 'UN', 'INFANTIL', 'AMERICANAS', 'img\\INFANTIL.png'),
('7892258791983', 'PS3', 159.99, 48, 751, 1000, 1, 'UN', 'INFANTIL', 'AMERICANAS', 'img\\INFANTIL.png'),
('7892258824094', 'XBOX 360', 154.94, 46.48, 235, 1000, 1, 'UN', 'INFANTIL', 'AMERICANAS', 'img\\INFANTIL.png'),
('7892258625240', 'XBOX ONE', 240, 72, 486, 1000, 1, 'UN', 'INFANTIL', 'AMERICANAS', 'img\\INFANTIL.png'),
('7892258953107', 'MICROONDAS', 380, 114, 45, 100, 3, 'UN', 'ELETRO DOMESTICOS', 'AMERICANAS', 'img\\ELETRO DOMESTICOS.png'),
('7892258748215', 'FOGAO', 649, 194.7, 50, 100, 3, 'UN', 'ELETRO DOMESTICOS', 'AMERICANAS', 'img\\ELETRO DOMESTICOS.png'),
('7892258226270', 'FREEZER', 1750, 525, 22, 100, 3, 'UN', 'ELETRO DOMESTICOS', 'AMERICANAS', 'img\\ELETRO DOMESTICOS.png'),
('7890002465357', 'CERVEJEIRA', 1099.99, 330, 54, 100, 3, 'UN', 'ELETRO DOMESTICOS', 'AMERICANAS', 'img\\ELETRO DOMESTICOS.png'),
('7909352456721', 'AR DE JANELA', 2099, 629.7, 48, 100, 3, 'UN', 'ELETRO DOMESTICOS', 'AMERICANAS', 'img\\ELETRO DOMESTICOS.png'),
('7909352457490', 'VENTILADOR', 157, 47.1, 98, 100, 3, 'UN', 'ELETRO DOMESTICOS', 'AMERICANAS', 'img\\ELETRO DOMESTICOS.png'),
('7909352475890', 'CHURRASQUEIRA', 3690, 1107, 54, 100, 3, 'UN', 'ELETRO DOMESTICOS', 'AMERICANAS', 'img\\ELETRO DOMESTICOS.png'),
('7909352468212', 'LAVA LOUÇA', 1554.07, 466.22, 12, 100, 3, 'UN', 'ELETRO DOMESTICOS', 'AMERICANAS', 'img\\ELETRO DOMESTICOS.png'),
('7909352527612', 'COOKTOP', 349, 104.7, 31, 100, 3, 'UN', 'ELETRO DOMESTICOS', 'AMERICANAS', 'img\\ELETRO DOMESTICOS.png'),
('7909352491999', 'FORNO DE EMBUTIR', 1399, 419.7, 67, 100, 3, 'UN', 'ELETRO DOMESTICOS', 'AMERICANAS', 'img\\ELETRO DOMESTICOS.png'),
('7909352745627', 'CAPACETE MOTO', 700, 419.7, 67, 100, 3, 'UN', 'AUTOMOTIVO', 'AMERICANAS', 'img\\AUTOMOTIVO.png'),
('7909352787863', 'CENTRAL MULTIMIDIA', 1000.01, 419.71, 67, 100, 3, 'UN', 'AUTOMOTIVO', 'AMERICANAS', 'img\\AUTOMOTIVO.png'),
('7909352725773', 'DVD PLAYER AUTOMOTIVO', 1200.02, 419.72, 67, 100, 3, 'UN', 'AUTOMOTIVO', 'AMERICANAS', 'img\\AUTOMOTIVO.png'),
('7909352724950', 'AUTO RADIO MP3', 399.03, 200.73, 67, 100, 3, 'UN', 'AUTOMOTIVO', 'AMERICANAS', 'img\\AUTOMOTIVO.png'),
('7909352814439', 'MODULO AMPLIFICADOR', 1399.04, 419.74, 67, 100, 3, 'UN', 'AUTOMOTIVO', 'AMERICANAS', 'img\\AUTOMOTIVO.png'),
('7890096187395', 'ALTO FALANTE 6X9', 200.05, 100.75, 67, 100, 3, 'UN', 'AUTOMOTIVO', 'AMERICANAS', 'img\\AUTOMOTIVO.png'),
('7909352709438', 'ALTO FALANTE 15\"', 500.06, 250.76, 67, 100, 3, 'UN', 'AUTOMOTIVO', 'AMERICANAS', 'img\\AUTOMOTIVO.png'),
('7909352778250', 'CAIXA SELADA QUADRIAXIAL', 1000.07, 419.77, 67, 100, 3, 'UN', 'AUTOMOTIVO', 'AMERICANAS', 'img\\AUTOMOTIVO.png'),
('7909352744194', 'PROTETOR DE CARENAGEM', 800.08, 419.78, 67, 100, 3, 'UN', 'AUTOMOTIVO', 'AMERICANAS', 'img\\AUTOMOTIVO.png'),
('7909352778373', 'CAPA DE CHUVA', 150.09, 50.79, 67, 100, 3, 'UN', 'AUTOMOTIVO', 'AMERICANAS', 'img\\AUTOMOTIVO.png'),
('7909352899627', 'LIVRO - O PODER OCULTO', 24, 12.9, 67, 100, 3, 'UN', 'LITERATURA', 'BIBLIOTECA INTER', 'img\\LITERATURA.png'),
('7909352815306', 'LIVRO - O MILAGRE DA MANHÃ', 24.01, 13.9, 67, 100, 3, 'UN', 'LITERATURA', 'BIBLIOTECA INTER', 'img\\LITERATURA.png'),
('7909352709452', 'LIVRO - FIQUE FORTE', 24.02, 14.9, 67, 100, 3, 'UN', 'LITERATURA', 'BIBLIOTECA INTER', 'img\\LITERATURA.png'),
('7909352798326', 'LIVRO - CAIXA DE PASSAROS', 24.03, 15.9, 67, 100, 3, 'UN', 'LITERATURA', 'BIBLIOTECA INTER', 'img\\LITERATURA.png'),
('7909352799750', 'LIVRO - EXTRAORDINARIO', 24.04, 16.9, 67, 100, 3, 'UN', 'LITERATURA', 'BIBLIOTECA INTER', 'img\\LITERATURA.png'),
('7909352801149', 'LIVRO - O PEQUENO PRINCEOE', 24.05, 17.9, 67, 100, 3, 'UN', 'LITERATURA', 'BIBLIOTECA INTER', 'img\\LITERATURA.png'),
('7909352859072', 'LIVRO - NO MIL AO MILHÃO', 24.06, 18.9, 67, 100, 3, 'UN', 'LITERATURA', 'BIBLIOTECA INTER', 'img\\LITERATURA.png'),
('7890002417622', 'LIVRO - HARRY POTTER', 24.07, 19.9, 67, 100, 3, 'UN', 'LITERATURA', 'BIBLIOTECA INTER', 'img\\LITERATURA.png'),
('7890002415840', 'LIVRO - WOW', 24.08, 20.9, 67, 100, 3, 'UN', 'LITERATURA', 'BIBLIOTECA INTER', 'img\\LITERATURA.png'),
('7890002411606', 'LIVRO - DEUSA DE TROIA', 24.09, 21.9, 67, 100, 3, 'UN', 'LITERATURA', 'BIBLIOTECA INTER', 'img\\LITERATURA.png'),
('7890002412702', 'LIVRO - A CASA DE PAPEL', 24.1, 22.9, 67, 100, 3, 'UN', 'LITERATURA', 'BIBLIOTECA INTER', 'img\\LITERATURA.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
