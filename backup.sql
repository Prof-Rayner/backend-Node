-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/02/2026 às 20:56
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbhotel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `adicionais`
--

CREATE TABLE `adicionais` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `adicionais`
--

INSERT INTO `adicionais` (`id`, `nome`, `preco`) VALUES
(1, 'Fronha', 1.23),
(4, 'Café da Manha', 35),
(5, 'Shampoo', 15),
(6, 'Janela', 75),
(7, 'Pessoa', 60.5),
(8, 'teste rota', 123),
(9, 'teste rota', 123);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cargos`
--

INSERT INTO `cargos` (`id`, `nome`) VALUES
(1, 'admin'),
(2, 'funcionario'),
(3, 'cliente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cargo_id` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`, `telefone`, `email`, `senha`, `cargo_id`) VALUES
(2, 'Fulano', '123', '159999999', 'teste@teste.com', '$2y$10$2JM98S0x6HLmAMCA0bXOxON/ERwC4l8POXPv7pTLt1h..r/vzJKjS', 3),
(3, 'Jeff Rayner', '123', '159999999', 'jeff@g.com', '$2y$10$qi1KcNQIDPLSJEAt7Uxd0uexviL2EGw4dIF1Vd.Unfx9xSR5Qk7ne', 3),
(4, 'beltrano', '123', '159999999', 'beltrano@g.com', '$2y$10$HAfl9rGr2RTQo93o1NuANOq8q3moJBiLQC.YYN9FJCs1dyH/Arqky', 3),
(5, 'Pamella Pereto', '123456', '147258', 'pamella@email.com', '$2y$10$/Dq8eRv9RCr6hdyWsVUFpOhBYcB0cd3g4aRQIhMJNlRox.LEbCMhK', 3),
(6, 'uira', 'Uira: senha123', '123', 'uira@email.com', '$2y$10$8OqM.la0yLK4L8uV5IsCIurKKcxmIm3z3XERK4ZeSMwV/DBJdhodW', 3),
(7, 'Matheus Possonato', '123456', '789456', 'possonato@gmail.com', '$2y$10$hmzLKf8NLV7YvOFDKe7SF.pvnPPxfrHNU9dH486PWObjpmcAj..1G', 3),
(8, 'João', '123456', '789456', 'joao@gmail.com', '$2y$10$d8.IcFeP83nJFufPeo0OEu2jPtXChq3eihMMbtMKG9jl8sMUruGN2', 3),
(9, 'Senha: mechamadelord', '123456789', '15987654321', 'lord@hihi.com', '$2y$10$D2.OLXHFGhL7do4K88ov..Sss286Aw6ctNBpTI0qT8Ic1s4.7E/KW', 3),
(10, 'Senha: mechamadelord', '123456789', '15987654321', 'lord@hihi.com', '$2y$10$eVvzbJ9WcR0RMPsp5RMWce87WgQp1bNX.oDsq9fZy729osCcSNMqG', 3),
(11, 'Senha: mechamadelord', '123456789', '15987654321', 'lord@hihi.com', '$2y$10$loBUCtiBzzJ7gGdjAJxSr.3CHxAHV/x2RBFT3rKznBcHFuVsQRXi.', 3),
(17, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$5ZKTzyMd7a4kjN0sWvWDRuG19gBOqG2tE/dUd6hgyMtxlUblkACTO', 3),
(18, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$sNditNkggQKFXodgIAs6ZevXLg6mOj64zXK5/G5zIL.MYoQaKLFZ2', 3),
(19, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$F49.k5Gtnjffn3x7Va9U0ueC3QIXUU4IIn4lu63KP7Xi2BG.rKwKi', 3),
(20, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$mJOTTQRzFsqcvQKffydnGuCQXPw580G2LQpRIBZkIXpTDjXhOulEm', 3),
(21, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$p7OsgXjk.bB1N4DMde5TGeWKjywWwMUeRTYdD2qiDw1QOXtTk3W0i', 3),
(22, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$jrUAMqVl7EGyInOngnHZGO3iQTBMnQhI4AwFQo1/O0AIrvqE9nd2.', 3),
(23, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$b9oSaaZNeajhBlv2oDedoeM8RX01BPfhCidxwGWg09wyyjQj1DxG6', 3),
(24, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$eFEbx2NIUvyW776TdKt7FOWsR0o9.pgUqNvbCjLDNlHiWFXvGVcTe', 3),
(25, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$gVTvxjPdSEWvYKJ2EokCg.94fwdioluDtqzLb3uMjCxLA5orf1vdy', 3),
(26, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$UlhuzVbq/4XQqg4KXn0HwuIZhWxNx8Z5OZsMJquxthpX5J70WFYxq', 3),
(27, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$LByz3uj3yk.cbaD5wqcA/et3qf6ODw2CE1PtDtqMBw/YudLxk2ylG', 3),
(28, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$igeuSZ7cQbC9sHrB1ypIluAJh32DaRdL7t.TCoveYNBVcgG5XLMFq', 3),
(29, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$xl.gICNKhM5G78AbJUwYxO5.IiQTddfUhUaLk1fClFkBOXFcOPo7W', 3),
(30, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$OkmB.83QHcXWDlN3oOhWh.zpKuo5ZLxC5rCmd5fgfuOjjkNa.5gI6', 3),
(31, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$2lmSyFdcN2whGcIq15yRbuJICaI2dTiYsLrW5DHidQyAnyodVKAEm', 3),
(32, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$9KEAYzdOeJXCNP1FSjruCeL4xI8JLfaKOElxJSuKExl6/S.w.Ejme', 3),
(33, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$JyAtu.2TZE3IGOJwP0TSxuSa5JqIIo3xz7.rGb65dNorOzMfX8Yxu', 3),
(34, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$difeCLqbnqjyrk8O3wnhweEz6wBh5ghrrs2ynSS27XzyO4YXc1e5i', 3),
(35, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$noL6hQyuq9Ip.N/Rn/tuduIXbTXZG9wWnBBZqE.F9Dprt2Uj8BktO', 3),
(36, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$8vdCdtztJ1kOWdcUVDg8.OXPqv03pycav.ieONbMEUevadRut6Btq', 3),
(37, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$cuCjWW8XIO3BWzSBUPXaT.woYteDbntXpD5AkF1VgAYbO/E4y3jnC', 3),
(38, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$banRsVLDEKhimFVSN9FJp.Se9g1UucDGVrFB3VXplEfSlryrxk0IG', 3),
(39, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$9Lr0wa5Fq8/cOrgNFmqmVu.790z.Ibd8G8eRy.Iz/owlnw0eQQrYi', 3),
(40, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$86nc0s7J2modEQj09Lw/0eJyM9Zsayp72XpbReoo30msMOclrw4Bq', 3),
(41, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$F08PvqhAc4DniYB/UQ7Fgumj4laLKeICkqpmxPuMm7YIkSW/lt9uW', 3),
(42, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$S1eFZt9ayFMr7jH3VCgE7OihFDIaZVeBdd33QV7rgOtUAOFrWA.1u', 3),
(43, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$cZ/x1jIfWoG1NMwcaPpYiu01h1VV.Ris7hPtOaMXa/flQUaccBs9C', 3),
(44, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$zIW59nAe8NFpe4omKilRcO1FEbsjqT3qETqYTSQtNA8z4lVamkkbS', 3),
(45, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$pwn3.Rlk9vRqLwy7ECvoGu9rqArTID918G2b14tlPyRPNG7js5i46', 3),
(46, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$9SDTLU12EH.9aar7Dx4LYe2U.QG9Muv0TIiuzDkvs4nuPiWOJDohW', 3),
(47, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$KDw5huEaoRsztpaZYuGhyumzLTrko1aFTaY2iiwWAr8/rmDUyqO12', 3),
(48, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$9qntADSrXdNP6Z4BwLbGDO/t3h2.4IOJDQTH84uOuwIFFjZfJtTC.', 3),
(49, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$qI8uRu0BInvMRRUvt6vo6..bwJGv1ULzznNo8C01GDIY7x30RUx.u', 3),
(50, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$CR91RMQrdbIfANIpeBABVu3GTmWWjiAXyt9z2jl9vVtO1C9hY.1ai', 3),
(51, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$61z5t.nYxQ3UfQZQCJNtmOBU5lPeM5XEOO6BAnK4lEfYiRpWmXLT2', 3),
(52, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$HK3Jq/YC17E8y./sPYhw5OfEMcQ23P1bMZWffuACCmEI.1SZ3S4tW', 3),
(53, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$QIS/Rhi5hHelNjpKjKkIx.TXZ01SVc7K7m.1gLCgxnQvb899o8JYu', 3),
(54, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$3RTYPbUer0hGuL/us7qjKevQuSn1PlnY4v11OIAdTs9LOkHhZVTQO', 3),
(55, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$FECwylwLv9NpU2ZPcEEfCeDl6jBaVK0iuzSo.G0IMJNOTT9ja/9va', 3),
(56, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$WBvvYwlpjI9iFZRu3jlKoO0h0D6AqWZU2vjgw24qc2JMnvzN5pO5C', 3),
(57, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$TU7OuZZ4OakD/itEVRjVe.ZHuV/xFopJfBAHfo0sg0VD7nR6gSGnq', 3),
(58, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$2RIx0MPgkQuJGxmLH5zT/eB.qYi8ZILqG1YPcykH42U9mXQOYtuLW', 3),
(59, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$8m9/.mia5wMWG8GUiREOGOAnsmSdmoEpE2ipkroIvYoEkKxe1Agl6', 3),
(60, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$uWEFIznCFt9p8ckTgTpsBuPifq7Ls418oQCdyV7/fgT9LaTmaiozm', 3),
(61, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$q5eAkDvtXHUMqoiHloJSHOhKVian9roa7ywA5fmC9UNcxw5U79nmO', 3),
(62, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$/Rg2mFkyf6uBK5ER6blgn.YXXqF/kmzrsnbkYxcz51crbv9WMyb..', 3),
(63, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$MIxDkrkwnvUvCByedYh8zOuzZGqjyKoTQHWdq4Z9vuZxpL66zWHBy', 3),
(64, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$LN5TLuhTOvnex67KqgLVQOW5dQKuU2/XgUhaMV8zQ0F1Xqke8QOMi', 3),
(65, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$DJHAxJpicX5B9b5sfCaxqeWCSfvc0zZzHFD0pSweIWreqvMafexju', 3),
(66, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$R3JbonlTib5/wfB0KFwsLuD4dceeWsyqc0/YnebRbZ0dkc4WCdOBi', 3),
(67, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$rirpFrtbOA./ZPrC72qGsuteBGApOlRyHzfwbfF8HtoetKWpQF0xm', 3),
(68, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$MhzSuOv/.7CMmT5DtiWw0uU6LkhUAztq7n7ahiHY7TLKbfpZH.LvK', 3),
(69, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$qSMQGetZIcag4eV2gnihZO9kvjVn4jhfyPKTJNMUER.EH9Y5RIwji', 3),
(70, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$J4mUa3SPRdmQ3ciegtAJluBSagF2UAG/75E0HbW.vkGmcpQA0BlG2', 3),
(71, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$G2B00TgGuvSyQtk1rXs0cOPzzPX2UuRErOcM7fZPovEMcFKPrKEkq', 3),
(72, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$K1PPbePTCBmgxkg48PX3h.tBSO3H2hOW4e8tn7VueLGFcgb6Ssci6', 3),
(73, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$0nMNraXW2xIM1d5tApwL.ObczsSaVulfP6Wvp7WW4YW92sV8I8XxW', 3),
(74, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$DgM.z1H5MG8OwLk0M2dXVeV021V5NR9eAg/QI/J2uHOdNv7Bb5tX2', 3),
(75, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$mz9ygFnmzL46L9d9CVRZmehGtNZdN1mVEVAqFWqZ7LVuWZXVbTWyu', 3),
(76, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$qp6eYjFOmZjGad5SLmk5bukXehjEvdjqNQBapJaydOMllBAg48aXq', 3),
(77, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$DVbWIO0.FcXpn9DAmatfFugmo5QrQvwoCuT1xKUd4xT/X7z.hVrU2', 3),
(78, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$2eL3nGs0IBIxsV95suboPey6ZBRnuT9JnMW/EKsOk0TmKG7AnjSam', 3),
(79, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$eqzQiyni4VNI/ccd1IzhQOW66OU.i8zE2KR8FuMhcYC0C.qSadvRa', 3),
(80, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$TKNuq9mhSwCLVkvvJjjt9Ow.x.9m5SCFnPc7EHOC4EHiVCX2ngVz.', 3),
(81, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$8w19OX5meHFgmhh4FIb01ekFqSKyQlMU59dR8BjYRXOVmG8A.etOe', 3),
(82, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$2c.bLg4Zt0z8y3wNDnBDGOTqRy./5NCa/cQkshF5RuFATuxg6m0Rm', 3),
(83, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$1mH.5AS82FowX1HxvPd59OjyVGs32SzTzNB8ZGUFJyqzuU/Ng91uy', 3),
(84, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$a7Vgynn61zLkOwbKn4HFYOhIt4bsYAVt75TH7BCo23Q5bwZaOND72', 3),
(85, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$fKMCEKveLn79/LYdRQX6suYoMJ4czjgREMWZvWK4dpugub4RXvZPC', 3),
(86, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$JcKhShfV4r4IOKAhYqnt.ulesMW6y97bm1d8AsL8dcXXv3ITa8ndW', 3),
(87, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$hOFCk9DU1dkx/iGbcusL8Oh89xQ8yUAKBIeBbB6bzcn03pZBGB0Fm', 3),
(88, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$v1R/l9SbMMpYEkx2/pILeuk9WdUAYqMfR3VDTRJ99V2GJMDgO1FcG', 3),
(89, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$ovfNc7PNzQQgJmh13BtdVe5maSv1qLK5jjH02ofQCm/.cAtO3UHPi', 3),
(90, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$50Qh3qBN.0V/WIb/qsYsfeOsfpb7l.naRxf2jXq9lwPUABsk6e6E2', 3),
(91, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$lnt9DZWHsLLP.XkCh29pwOiZCwMXzCKi3q.Btg384cNkKF3ZT6IAq', 3),
(92, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$PL1fLOD3HWi3ZsUFLhnB9uIanzQ47Iblb4yCRS9hIIacsmV1Hwcza', 3),
(93, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$42fUXWvOLBfGLOdD8gtdCePvF0BQze.IG767aLK/hJ9tOhXPy1uT2', 3),
(94, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$.A.G9hHGbccWnYr3bRfYaONuxsFRD.utLdV7luy9uCDYZm10trLWq', 3),
(95, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$mm5DMmdAfN3D/SyezTFw3.LWnWxTHb83vDPOrD/VLIW1FkLkBCLCq', 3),
(96, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$wYvjW44c5AsOFulqjSX7g.RarG84lqsM1KOJl8dmKP1XeSQbgKV4.', 3),
(97, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$01JM7ZUvIU/Tau8loupNTuAebKg9ahTPd4ijGw24k2eGt42S9R8Ya', 3),
(98, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$bpISm4xlpMw/8jw/wzuWDuqIdUDrK1yZrdZbemoL7pZ/.tHC6rVhm', 3),
(99, 'nomeTeste', '123456789-55', '157070-7070', 'teste@email.com', '$2b$10$f3HRQupkXykA43LEdg58KedSIGgTnoH9WlhoF8MInflw82f6juZGK', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fotos`
--

INSERT INTO `fotos` (`id`, `nome`) VALUES
(1, '254339fc5550103eaa1976394eb23140.jpg'),
(2, '5b3cec015e876eb9e8b1e535c2f39676.jpg'),
(3, '78106be0249fe3f16d0071959bd32550.jpg'),
(4, '19d2ce994c7c4a0617bead9ca69bbe2d.jpg'),
(5, 'f086e2dec8f3f16d41c59bea01d12e8c.jpg'),
(6, '85338a873b8aa6dbcda2b9799c8bab02.jpg'),
(7, '45e67e464832c3cdc6a87d4e76170db5.jpg'),
(8, 'aa427f294455cfe319b5f0176b9efb38.jpg'),
(9, 'ef9a3f88beb957707e94211e418890d1.jpg'),
(10, '5704dedb547af2843d540ecbcf750b31.jpg'),
(11, 'a9e3197ff80b83b28c3c430db3ca7210.jpg'),
(12, '16a52b5ffa805f20dbd61c750e3eaad0.jpg'),
(13, 'b3eeff21287d1b86c1234721f9069a24.jpg'),
(14, '738358791a27440d6557a9f7e84a67ad.jpg'),
(15, '8c19cda4bdd0a9dc42f6647ffcb101bc.jpg'),
(16, '7a10783f236334b1dfc8ac93597d67b2.jpg'),
(17, '2a10632fde6878adeac18c29b3240968.jpg'),
(18, '01959c2e044ee4a25816012e9178522d.jpg'),
(19, 'b3817a20c7bca1afce0022fbce04722b.jpg'),
(20, '259fc29dd65dfc4f6cb0518ab0ad3fbc.jpg'),
(21, '5b9b5ac100186f35df1002fc9ca62c87.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) NOT NULL,
  `data` date NOT NULL DEFAULT (CURRENT_DATE),
  `pagamento` enum('debido','credito','pix') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `usuario_id`, `cliente_id`, `data`, `pagamento`) VALUES
(1, NULL, 4, '2025-09-24', 'pix'),
(11, NULL, 3, '2025-10-15', 'pix'),
(20, NULL, 3, '2025-10-15', 'pix'),
(34, NULL, 3, '2025-10-21', 'pix'),
(36, NULL, 9, '2025-10-30', 'pix'),
(37, NULL, 5, '2025-10-31', 'pix'),
(38, NULL, 5, '2025-10-31', 'pix'),
(39, NULL, 5, '2025-10-31', 'pix'),
(40, NULL, 4, '2026-02-19', 'pix'),
(41, NULL, 6, '2026-02-19', 'pix'),
(42, NULL, 6, '2026-02-19', 'pix'),
(43, NULL, 6, '2026-02-19', 'pix'),
(44, NULL, 6, '2026-02-19', 'pix'),
(45, NULL, 6, '2026-02-19', 'pix'),
(46, NULL, 6, '2026-02-19', 'pix'),
(47, NULL, 6, '2026-02-19', 'pix'),
(48, NULL, 6, '2026-02-19', 'pix'),
(49, NULL, 6, '2026-02-19', 'pix'),
(50, NULL, 6, '2026-02-19', 'pix'),
(51, NULL, 6, '2026-02-19', 'pix'),
(52, NULL, 6, '2026-02-19', 'pix'),
(53, NULL, 6, '2026-02-19', 'pix'),
(54, NULL, 6, '2026-02-19', 'pix'),
(55, NULL, 6, '2026-02-19', 'pix'),
(56, NULL, 6, '2026-02-19', 'pix'),
(57, NULL, 6, '2026-02-19', 'pix'),
(58, NULL, 6, '2026-02-19', 'pix'),
(59, NULL, 6, '2026-02-25', 'pix'),
(60, NULL, 6, '2026-02-25', 'pix'),
(61, NULL, 6, '2026-02-25', 'pix'),
(62, NULL, 6, '2026-02-25', 'pix'),
(63, NULL, 6, '2026-02-25', 'pix'),
(64, NULL, 6, '2026-02-25', 'pix'),
(65, NULL, 6, '2026-02-25', 'pix'),
(66, NULL, 6, '2026-02-25', 'pix'),
(67, NULL, 6, '2026-02-25', 'pix'),
(68, NULL, 6, '2026-02-25', 'pix'),
(69, NULL, 6, '2026-02-25', 'pix'),
(70, NULL, 6, '2026-02-25', 'pix');

-- --------------------------------------------------------

--
-- Estrutura para tabela `quartos`
--

CREATE TABLE `quartos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `qtd_cama_casal` int(11) NOT NULL,
  `qtd_cama_solteiro` int(11) NOT NULL,
  `preco` double NOT NULL,
  `disponivel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `quartos`
--

INSERT INTO `quartos` (`id`, `nome`, `numero`, `qtd_cama_casal`, `qtd_cama_solteiro`, `preco`, `disponivel`) VALUES
(5, 'Quarto Supremo', 250, 3, 1, 350, 1),
(7, 'Quarto Teste', 99, 1, 1, 350, 1),
(8, 'Quarto Atualizado2', 8000, 1, 0, 1.99, 1),
(9, 'Quarto Casal', 199, 1, 1, 654, 1),
(10, 'Deluxe', 130, 1, 0, 39.9, 1),
(11, 'TESTE', 123, 1, 0, 500.6, 1),
(12, 'quarto com foto', 555, 2, 0, 899, 1),
(13, 'quarto com foto', 555, 2, 0, 899, 1),
(14, 'quarto com foto', 555, 2, 0, 899, 1),
(29, 'quarto com foto', 555, 2, 0, 899, 1),
(30, 'quarto com foto', 555, 2, 0, 899, 1),
(33, 'quarto com foto', 555, 2, 0, 899, 1),
(34, 'quarto com foto', 555, 2, 0, 899, 1),
(35, 'teste', 1, 1, 1, 1, 1),
(36, 'a', 4, 1, 1, 4, 0),
(37, 'a', 180, 1, 1, 5.9, 0),
(38, 'A', 1, 1, 1, 55, 0),
(39, 'A', 1, 1, 1, 555, 0),
(40, 'TESTE QUARTO COM FOTOS', 11, 1, 1, 55, 0),
(41, 'AA', 1, 1, 1, 44, 0),
(42, 'yrsdytytr', 55, 1, 1, 5, 0),
(43, 'Teste upload quarto com fotos', 150, 1, 1, 55, 1),
(44, 'Teste novo upload quarto com fotos', 150, 1, 1, 55, 1),
(45, 'ff', 1, 1, 1, 44, 1),
(46, 'teee', 454, 1, 3, 656, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `quartos_fotos`
--

CREATE TABLE `quartos_fotos` (
  `quarto_id` int(11) NOT NULL,
  `foto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `quartos_fotos`
--

INSERT INTO `quartos_fotos` (`quarto_id`, `foto_id`) VALUES
(33, 2),
(34, 3),
(35, 4),
(36, 5),
(37, 7),
(38, 9),
(39, 10),
(40, 11),
(41, 12),
(42, 13),
(43, 15),
(44, 16),
(45, 18),
(46, 20),
(46, 21);

-- --------------------------------------------------------

--
-- Estrutura para tabela `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `quarto_id` int(11) NOT NULL,
  `adicional_id` int(11) DEFAULT NULL,
  `data_inicio` datetime NOT NULL,
  `data_fim` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reservas`
--

INSERT INTO `reservas` (`id`, `pedido_id`, `quarto_id`, `adicional_id`, `data_inicio`, `data_fim`) VALUES
(1, 1, 9, 1, '2025-09-15 14:00:00', '2025-09-24 12:00:00'),
(2, 1, 5, 1, '2025-09-15 14:00:00', '2025-09-24 12:00:00'),
(3, 1, 10, 1, '2025-09-15 14:00:00', '2025-09-24 12:00:00'),
(4, 11, 7, NULL, '2025-06-01 00:00:00', '2025-06-05 00:00:00'),
(5, 11, 8, NULL, '2025-06-01 00:00:00', '2025-06-05 00:00:00'),
(6, 20, 10, NULL, '2025-06-01 00:00:00', '2025-06-05 00:00:00'),
(7, 34, 5, NULL, '2026-01-01 00:00:00', '2026-01-08 00:00:00'),
(8, 34, 9, NULL, '2026-01-01 00:00:00', '2026-01-08 00:00:00'),
(9, 34, 10, NULL, '2026-01-01 00:00:00', '2026-01-08 00:00:00'),
(10, 36, 7, NULL, '2026-06-01 00:00:00', '2026-06-05 00:00:00'),
(11, 36, 8, NULL, '2026-06-01 00:00:00', '2026-06-05 00:00:00'),
(12, 37, 5, NULL, '2025-11-28 00:00:00', '2025-11-30 00:00:00'),
(13, 38, 5, NULL, '2025-10-31 00:00:00', '2025-11-01 00:00:00'),
(14, 38, 7, NULL, '2025-10-31 00:00:00', '2025-11-01 00:00:00'),
(15, 39, 9, NULL, '2025-10-31 00:00:00', '2025-11-10 00:00:00'),
(16, 51, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 51, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 56, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 56, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 57, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 57, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 58, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 58, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 59, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(25, 59, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(26, 60, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(27, 60, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(28, 61, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(29, 61, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(30, 62, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(31, 62, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(32, 63, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(33, 63, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(34, 64, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(35, 64, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(36, 65, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(37, 65, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(38, 66, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(39, 66, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(40, 67, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(41, 67, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(42, 68, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(43, 68, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(44, 69, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(45, 69, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(46, 70, 30, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00'),
(47, 70, 29, NULL, '2026-02-19 14:00:00', '2026-02-20 12:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cargo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `cargo_id`) VALUES
(1, 'Administrador', 'admin@admin.com', '@admin123', 1),
(2, 'fulano', 'fulano@email.com', '$2y$10$E7eFY7leQlyRPk4q0vdtiufMFd4iHwHUsVGj.RsN.WKf11ZsxvVji', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `adicionais`
--
ALTER TABLE `adicionais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices de tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `cargo_id` (`cargo_id`);

--
-- Índices de tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `quartos`
--
ALTER TABLE `quartos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices de tabela `quartos_fotos`
--
ALTER TABLE `quartos_fotos`
  ADD PRIMARY KEY (`quarto_id`,`foto_id`),
  ADD KEY `foto_id` (`foto_id`),
  ADD KEY `quarto_id_2` (`quarto_id`),
  ADD KEY `quarto_id` (`quarto_id`);

--
-- Índices de tabela `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `pedido_id` (`pedido_id`),
  ADD KEY `quarto_id` (`quarto_id`),
  ADD KEY `adicional_id` (`adicional_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `cargo_id` (`cargo_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adicionais`
--
ALTER TABLE `adicionais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de tabela `quartos`
--
ALTER TABLE `quartos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `quartos_fotos`
--
ALTER TABLE `quartos_fotos`
  MODIFY `quarto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `quartos_fotos`
--
ALTER TABLE `quartos_fotos`
  ADD CONSTRAINT `quartos_fotos_ibfk_1` FOREIGN KEY (`quarto_id`) REFERENCES `quartos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `quartos_fotos_ibfk_2` FOREIGN KEY (`foto_id`) REFERENCES `fotos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`quarto_id`) REFERENCES `quartos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `reservas_ibfk_3` FOREIGN KEY (`adicional_id`) REFERENCES `adicionais` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
