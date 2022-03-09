-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Mar-2022 às 19:12
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `blog_ci4`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `posts_id` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `posts_id`, `comentario`, `created_at`) VALUES
(6, 7, 'Ryzen não deveria consumir muito. Estranho.', '2020-12-27 18:45:18'),
(7, 8, 'Dá pra instalar num xiaomi?', '2020-12-27 18:49:42'),
(8, 9, 'Legal', '2020-12-27 18:52:58'),
(9, 11, 'Legal a matéria', '2020-12-28 18:33:54'),
(10, 11, 'Gostei do seu conteúdo.', '2020-12-28 18:49:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`) VALUES
(6, 'Em queda! Samsung deve vender menos celulares que o esperado em 2020', 'queda-samsung', 'A Samsung antecipou todo o seu cronograma de lançamentos de 2021. Isso porque a família Galaxy S21 deve ser apresentada ao público em janeiro, enquanto que diversos dispositivos da linha Galaxy A também viraram alvo constante de vazamentos.\r\n\r\nAo que tudo indica, a Samsung está mudando a sua estratégia para recuperar as vendas perdidas durante a crise do coronavírus (Covid-19). Segundo números apresentados pela mídia sul-coreana, 2020 será conhecido como o ano em que a companhia não vendeu 300 milhões de smartphones.\r\n\r\nAtualmente, analistas de mercado acreditam que a Samsung tem capacidade de embarcar cerca de 270 milhões de celulares. Ou seja, essa será a primeira vez em nove anos que a marca ficará abaixo dos 300 milhões.'),
(7, 'Launcher da Epic Games eleva temperatura de CPUs Ryzen quando devia estar ocioso', 'ryzen-temperatura', 'A galera que está aproveitando os jogos gratuitos diários da Epic Games Store para dezembro talvez precise ficar atenta pra lembrar de fechar o launcher depois de ativar cada jogo. Isso porque, depois de relatos de usuários no Reddit, o HotHardware comprovou que o app está operando processadores Ryzen mesmo quando deveria estar ocioso. Usuários reportam aumentos de até 20ºC na temperatura do CPU só de ter a Epic Games Store aberta, sem fazer nada.\r\n\r\nA investigação do site mostrou que o app de fato mostrou que o aplicativo requisita alguns núcleos do processador e faz eles trabalharem, mesmo sem estar, teoricamente, fazendo nada. Nenhum jogo está aberto, nem está sendo feito o download de atualizações. O app deveria estar ocioso, mas usa núcleos do processador.\r\n\r\nAproveitando a bateria de testes, o pessoal do HotHardware decidiu verificar como estava o uso de comunicação de dados do computador com o launcher da EGS aberto, usando o conhecido aplicativo Glasswire. Foi verificado que o aplicativo tem picos de comunicação com 22 servidores diferentes, em intervalos de tempo aleatórios.'),
(8, 'Apple ProRAW | O que é e para que serve o novo formato de imagem da Apple', 'apple-pro-raw', 'Uma das maiores novidades do iPhone 12 Pro é o que a Apple chama de ProRAW, uma maneira de salvar fotos que permite “controle criativo adicional ao fazer ajustes de exposição, cor e balanço de branco”, segundo a própria empresa. Mas o que isso significa, afinal, essa opção que foi liberada no iOS 14.3? Agora, o Canaltech explica o que é ProRAW e como funciona.\r\n\r\nPara entender, é preciso antes saber o que é o RAW, um formato de mídia digital muito utilizado em fotografia profissional. Como você possivelmente já sabe, existem vários tipos de imagens digitais, como JPEG, GIF e PNG, e cada um tem suas particularidades, com benefícios e desvantagens.\r\n\r\nO que é RAW?\r\nEm termos simples, o RAW é um formato de mídia “cru”, como diz o próprio nome. O arquivo salva o máximo de informações de cores e luz possível, permitindo que a edição mesmo anos após o clique seja feita sem nenhuma perda de detalhe na imagem. Porém, isso obviamente gera um arquivo gigante, praticamente impossível de se utilizar na internet sem qualquer tipo de compressão.\r\n\r\nA principal diferença para JPEG ou PNG, formato mais comuns em fotografias digitais, é que não existe praticamente nenhum processamento da imagem. O JPEG, porém, tem uma limitação bem maior em relação às cores e luz, e até pode permitir alguns retoques — que muitos de nós chamamos imprecisamente de edição — em cores e exposição. Contudo, dependendo dos ajustes, é comum perder detalhes na imagem.\r\n\r\nO RAW é visto quase sempre em câmeras digitais profissionais e também está presente em diversos celulares como opção de fotografia. Geralmente, o dispositivo salva a foto em RAW e JPEG ao mesmo tempo, e se o fotógrafo quiser, pode fazer seu próprio ajuste na imagem em vez de usar o processamento nativo do aparelho.\r\n\r\nHá também aplicativos que salvam as imagens em RAW, geralmente de terceiros. A App Store mesmo tem várias opções do tipo, mas até agora não havia a possibilidade de tirar uma foto com a câmera nativa do iPhone e salvar a imagem nesse formato cru. Isso mudou com o lançamento do ProRAW, que é um pouco diferente do RAW, como veremos a seguir.\r\n\r\nE o Apple ProRAW?\r\nSegundo a Apple, o ProRAW “combina as informações do formato RAW padrão com o processamento de imagem do iPhone para oferecer controle criativo adicional ao fazer ajustes de exposição, cor e balanço de branco”. Em outras palavras, ele até faz algum processamento na imagem, mas salva informações suficientes para uma edição sem perda de qualidade.\r\n\r\nA empresa criou a ferramenta como uma solução para entregar uma opção que sirva tanto para os profissionais, que gostam de fazer os ajustes por conta própria, quanto para o usuário médio, que prefere um resultado mais pronto logo de cara. Isso foi necessário porque os aplicativos de câmera de terceiros não conseguem aproveitar as vantagens da tecnologia Deep Fusion, que usa aprendizado de máquina para registrar riqueza maior de detalhes na imagem, capturando vários quadros de exposição para juntar em uma só foto.\r\n\r\nAssim, o ProRAW traz todos os benefícios do processamento de imagem da Apple ao mesmo tempo em que permite ajustes em exposição, saturação e contraste como uma imagem no formato RAW sem perda de qualidade.\r\n\r\nComo usar o ProRAW\r\nPara usar o formato de imagens da Apple, é preciso ter um dos dispositivos compatíveis — o iPhone 12 Pro ou 12 Pro Max. Vá até Ajustes > Câmera > Formatos, e ative a opção Apple ProRAW. Quando abrir a câmera, toque no botão Raw na parte superior dirieta da tela para ativar o ProRAW e salvar a foto no formato que permite edição sem perda de qualidade. Isso vai gerar um arquivos .DNG, formato padrão para imagens em negativo digital.\r\n\r\nÉ preciso abri-la em um app para fazer a edição e salvar o resultado como JPEG a fim de compartilhar as fotos feitas com o ProRAW ativado nas redes sociais. A Apple recomenda realizar a edição no aplicativo Fotos do seu iPhone ou Mac, mas é possível abrir a imagem em qualquer aplicativo compatível com o formato DNG, como o Photoshop. Vale ressaltar que, segundo a Apple, pode ter uma diferença na leitura das informações, gerando assim uma imagem com cores e exposição um pouco diferentes daquelas que você vê na tela do celular ou mesmo ao abrir no Fotos pelo Mac.\r\n\r\nTenha em mente também que, por salvar mais informações na imagem, o ProRAW gera um arquivo final bem maior do que o JPEG ou HEIF. O ideal é utilizar só quando você tirar fotos que realmente deseja editar posteriormente, mantendo-o desativado ao fazer cliques do dia a dia e não lotar o armazenamento do seu celular à toa.'),
(9, 'OS JOGOS MAIS ESPERADOS PARA 2021', 'jogos-2021', 'Em 2020, os jogos se mostraram um porto seguro quando as coisas chegaram ao seu pior. Mesmo quando nada ia bem, conseguimos nos segurar na esperança de um futuro melhor. Esse futuro está quase chegando e ele promete ser brilhante.\r\n\r\nCom um lançamento morno da nova geração, 2021 será o ano em que realmente veremos os novos consoles brilharem. Os grandes exclusivos de Xbox Series X|S e PlayStation 5 já foram anunciados e prometem experiências de cair o queixo. Prepare-se para conhecer os jogos mais aguardados de 2021.\r\n\r\nVamos começar com a maior aposta do Xbox para a nova geração: Halo Infinite. Mesmo com alguns problemas de desenvolvimento, o jogo promete elevar a franquia Halo a um novo patamar. Vimos uma demonstração de 8 minutos de gameplay no Xbox Showcase de junho e só conseguimos pensar em uma coisa desde então: Master Chief está melhor do que nunca.\r\n\r\nInfinite promete trazer fases muito maiores do que qualquer coisa já vista na franquia. Será preciso até usar veículos para atravessar os planetas. Os inimigos não mudaram tanto desde nosso último encontro, mas Master Chief recebeu diversas melhorias, como um gancho que amplia as possibilidades de exploração e as estratégias em combate. Mal podemos esperar para encarnar o melhor Spartan de toda galáxia.\r\n\r\nHorizon Forbidden West\r\nLançamento: Segundo semestre de 2021\r\n\r\nClaro que o PlayStation 5 não ficaria para trás. A Sony trará a sequência de uma das maiores revelações dessa última geração — Horizon: Zero Dawn. No primeiro game, aprendemos mais sobre as origens de Alloy e o passado desse mundo perigoso onde dinossauros mecânicos reinam absolutos.\r\n\r\nAgora, olhamos para o futuro. Em Forbidden West, Alloy viaja até as ruínas da Califórnia, mergulhando de cabeça em águas desconhecidas, para frear a corrupção do Hades que se espalha pelo continente. O próximo jogo da Guerrilla Games vai introduzir novas tribos e novas criaturas como um imenso mamute mecatrônico. Preparado para a caça?'),
(11, 'Philco PHT5000 é boa? Saiba tudo sobre a caixa de som amplificada', 'philco-pht5000', 'A Philco PHT5000 é uma caixa de som amplificada que funciona via Bluetooth e promete som poderoso. Rivalizando com modelos de marcas como JBL, Multilaser, Lenoxx e Mondial, o dispositivo conta com potência de 150 Watts RMS, iluminação na parte frontal e suporta até dois microfones. Com preços a partir de R$ 678 no Brasil, a opção da Philco pode ser uma boa opção para quem deseja uma caixa amplificada sem gastar muito.\r\n\r\nEntretanto, apesar da promessa de potência, sua bateria pode decepcionar alguns usuários, já que possui autonomia para apenas duas horas de reprodução, de acordo com a fabricante. Para te ajudar na decisão de comprar ou não o speake, o TechTudo preparou uma análise de ficha técnica que traz mais detalhes sobre a caixa de som amplificada da Philco. Confira a seguir:\r\n\r\nFicha técnica Philco PHT5000\r\nCor: preto\r\nPotência: 150 Watts RMS\r\nConexões: Bluetooth, USB, auxiliar e microfones\r\nDimensões (L x A x P): 25,2 x 60,1 x 30 cm\r\nPeso: 6,8 kg\r\nBateria: até 2 horas\r\n\r\nDesign\r\nO design da Philco PHT5000 é bem tradicional ao estilo das caixas de som amplificadas que existem no mercado. O modelo pode ser utilizado tanto na vertical quanto na horizontal e traz uma central de controle na parte superior, onde é possível controlar o Bluetooth para conectar smartphones, regular o volume e plugar os microfones. Já a parte frontal é composta por luzes LED que podem ser configuradas pelo usuário.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comentarios_ibfk_1` (`posts_id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
