use fiap_ecommerce;

select * from cliente;

/*
insert into cliente values (1,'joao@gmail.com.br', '123', 'Avenida Lins de Vasconcelos, 1000 - cep: 02545-000', '123456789-00', 'Joao da Silva', 'Maria da Silva', '15-94567-1240', 'Advogado', 7500.00, '1975-05-25');

insert into cliente values (2,'paulo@gmail.com.br', '456', 'Avenida Morumbi, 540 - cep: 04945-002', '123456789-10', 'Paulo da Silva', 'Maria da Silva', '15-94567-1245', 'Engenheiro', 8000.00, '1990-10-25');

insert into cliente values (3,'jose@gmail.com.br', '789', 'Avenida das Nações Unidas, 12540 - SP- cep: 045970-005', '123456789-20', 'Jose Marinho da Silva', 'Gertrudes Marinho', '11-97845-1987', 'Economista', 11000.00, '1955-01-10');

insert into cliente values (4,'carla@gmail.com.br', '001', 'Rua das Oliveiras, 240 - SP- cep: 051370-005', '123456789-30', 'Carla Ferreira', 'Josefa Ferreiea', '11-99874-1254', 'Gerente Comercial', 4500.00, '1980-07-30');

insert into cliente values (5,'vanessa@gmail.com.br', '002', 'Rua General Miguel Costa, 1325 - SP- cep: 041870-030', '123456789-40', 'Vanessa Souza', 'Aline Souza', '11-97412-0179', 'Analista de Recursos Humanos', 3000.00, '1987-11-20');
*/

select * from blacklist;
/*
insert into blacklist values (1, '123456789-00');
insert into blacklist values (2, '123456789-20');
insert into blacklist values (3, '123456789-40');
*/

select * from spc;
/*
insert into spc values (1, '123456789-00');
insert into spc values (2, '123456789-10');
insert into spc values (3, '123456789-30');
*/


select * from produto;
/*
insert into produto values (1, 1, 'Notebook Acer Aspire', 'Notebook Acer Aspire ES1-431-C3W6 com Intel® Dual Core, 2GB, 32GB eMMC, Office 365 Personal, HDMI, Bluetooth, Webcam, LED 14" e Windows 10', 'Com o Notebook Aspire ES1-431-C3W6, da Acer, você resolve as tarefas do seu dia a dia, tanto pessoais como as profissionais. Um acessório com os mais variados recursos, tem processador Intel Celeron N3050 Dual Core 1.6 GHz até 2.16 GHz, HD de 32 GB eMMC e memória RAM de 2GB.', 1799.00, 'Acer', 'http://www.pontofrio-imagens.com.br/html/conteudo-produto/56/6407550/notebook-acer-aspire-es1-431-c3w6.jpg');
insert into produto values (2, 1, 'Notebook Samsung Essentials E21 370E4K-KWA', 'Notebook Samsung Essentials E21 370E4K-KWA com Intel® Dual Core, 4GB, 500GB, Gravador de DVD, Leitor de Cartões, HDMI, Bluetooth, LED 14" e Windows 10', 'Detalhes do produto: Samsung: Notebook Samsung Essentials E21 370E4K-KWA com Intel® Dual Core, 4GB, 500GB, Gravador de DVD, Leitor de Cartões, HDMI, Bluetooth, LED 14" e Windows 10. Tudo o que você precisa para o dia a dia você encontra no notebook Samsung Essentials E21. Perfeito para usuários que passam o dia em movimento, o E21 vem repleto de ferramentas de produtividade e entretenimento. O processador Intel® Dual Core responde aos comandos de multitarefa sem comprometer o rendimento. Além disso, vem equipado com Windows 10 e bateria de longa duração para você ficar sempre conectado.', 1499.00, 'Samsung', 'http://www.extra-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=230262525');
insert into produto values (3, 1, 'Pen Drive SanDisk Cruzer Blade 8GB', 'Pen Drive SanDisk Cruzer Blade 8GB DE armazenamento', 'Com taxa de transferência 2.0 e instalação plug and play, o Pen Drive SanDisk Cruzer Blade 8GB é um dos mais compactos da categoria e ideal para usuários que buscam praticidade para carregar seus arquivos. Com toda essa capacidade, compartilhe com seus amigos e familiares suas fotos, suas músicas favoritas e seus vídeos mais divertidos de um jeito rápido e fácil. Para isso, basta plugá-lo numa entrada USB no dispositivo que preferir (net ou notebook) e pronto.', 19.00, 'SanDisk', 'http://www.extra-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=3978939');

insert into produto values (4, 2, 'Smartphone Samsung Galaxy A5', 'Smartphone Samsung Galaxy A5 4G Duos A500M/DS Dourado com Dual Chip, Tela 5", Android 4.4, Câm.13MP e Processador Quad Core 1.2GHz - Tim', 'Smartphone Samsung - A autoridade em celulares tem mais um produto surpreendente. Uma das maiores fabricantes de celulares do mundo surpreende mais uma vez com o lançamento de um novo smartphone: o Galaxy A5 4G Duos A500M. A Samsung é uma das principais empresas a utilizar o sistema da Google, Android, que neste aparelho chega na versão 4.4, já preparada para acessar os principais serviços online do mundo, bem como um catálogo completo com centenas de milhares de aplicativos para uso profissional, comunicação e diversão.', 979.00, 'Samsung', 'http://www.extra-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=245405379');
insert into produto values (5, 2, 'Smartphone Sony Xperia C4', 'Smartphone Sony Xperia C4 Dual Preto com Tela 5.5", Dual Chip, Câmera 13MP, 4G, TV Digital, Android 5.0 e Processador Octa-Core 1.7GHz', 'OS MELHORES MOMENTOS DA VIDA MERECEM SER ETERNIZADOS - Você vai ficar de boca aberta com os recursos desenvolvidos pela Sony para o seu sensacional smartphone Xperia C4 Dual. Através desse equipamento é possível captar as mais incríveis cenas com uma qualidade de imagem única se comparada com outros modelos do mesmo segmento. Os vídeos e fotos registrados com esse aparelho apresentarão uma nova experiência e farão com que os seus momentos com os amigos e familiares fiquem muito mais especiais. Com o Xperia C4 Dual as suas selfies ficarão muito mais especiais graças a sua câmera de frontal de 5MP integrada com flash de LED e lente grande angular. Esses dispositivos vão auxiliar você a captar selfies exclusivas independentemente do tipo de iluminação, tanto durante a noite quanto em dias de muito sol, as suas fotos ficarão perfeitas.', 1150.00, 'Sony', 'http://www.extra-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=151410055');

insert into produto values (6, 3, 'Forno de Micro-ondas Panasonic', 'Forno de Micro-ondas Panasonic Style NNST674S Inox - 32L', 'Detalhes do produto: Panasonic: Forno de Micro-ondas Panasonic Style NNST674S Inox - 32L. Prepare suas refeições com praticidade e rapidez com o Forno de Micro-ondas Panasonic Style. Ele é amplo e possui uma moderna tecnologia desodorizadora que elimina o cheiro de outros alimentos preparados anteriormente. Ele conta com oito receitas pré-programadas que facilitam ainda mais o seu dia-a-dia: pipoca, leite, arroz, strogonoff, vegetais, sopa, pudim e brigadeiro. Além disso, memoriza até três receitas, possui função descongelamento e reaquecimento, trava eletrônica de segurança e função muda.', 579.00, 'Panasonic', 'http://www.extra-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=245326527');
insert into produto values (7, 3, 'Refrigerador Electrolux Duplex', 'Refrigerador Electrolux Duplex DC35A - 260L - Branco', 'Com o Electrolux DC35A você tem muito mais do que um refrigerador espaçoso. Além de seus 260 litros de capacidade, esse modelo traz diversos recursos práticos e uma tecnologia de ponta que facilita a vida de qualquer um. Com uma série de compartimentos variados, o produto permite que você organize os alimentos da maneira que preferir. Aproveite o porta-latas, porta-ovos ou o gavetão para frutas e legumes. As prateleiras são removíveis e podem ter sua altura regulada, o que facilita a limpeza e a acomodação interna dos itens no equipamento. O trava-garrafas mantém as bebidas fixas à porta e evitam quedas e líquidos derramados. O freezer é muito potente, com 53 litros de espaço para congelar muita coisa! Deixe sua cozinha bem mais decorada com o design moderno desse refrigerador. E a iluminação garante que você visualize tudo com toda facilidade.', 1200.00, 'Electrolux', 'http://www.extra-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=168331450');

insert into produto values (8, 4, 'Smart TV LED 50" Ultra HD 4K Samsung 50JU6500', 'Smart TV LED 50" Ultra HD 4K Samsung 50JU6500 com UHD Upscaling, Painel Futebol, Quad Core, Wi-Fi, Entradas HDMI e USB', 'Sente-se em seu sofá, ligue a TV e o seu cinema particular começará a sessão. A sua família vai adorar e os seus amigos não vão querer sair da sua casa depois que a TV JU6500, da Samsung, estiver em seu rack com todo o esplendor de suas 50 polegadas.O painel LED proporciona uma televisão com design de muita categoria. Sua borda é fininha e no seu interior há um processador de quatro núcleos que dá o fôlego ideal para rodar aplicativos e cada um dos recursos inovadores deste aparelho. O Full HD foi superado e quem preza por verdadeira alta definição pode embarcar agora no Ultra HD. A resolução 4K tem quatro vezes mais qualidade que a sua antecessora e neste aparelho vem acompanhada do UHD Dimming, recurso que traz ainda mais nitidez e contraste à programação.', 3500.00, 'Samsung', 'http://www.extra-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=157114583');
insert into produto values (9, 4, 'Smart TV LED 43" Full HD Philco PH43E30DSGW', 'Smart TV LED 43" Full HD Philco PH43E30DSGW com Conversor Digital, Midiacast, Wireless Integrado, Entradas HDMI e Entrada USB', 'Aqui está um televisor econômico, com capacidades de Smart TV e preparado pela Philco: a TV PH43E30DSGW, com painel LED de 43 polegadas e alta definição de imagem (Full HD), foi feita para quem exige qualidade. Conecte a ela videogames, tocadores Blu-ray e outros aparelhos a partir de 3 entradas HDMI que transmitem som e imagem sem perda de qualidade, e conte também com uma porta USB 2.0. A Smart TV da Philco foi equipada com conversor digital e traz recursos de som Surround, para um áudio imersivo e também um conveniente nivelador automático de volume. Na hora de ir dormir, você pode continuar em companhia da TV. Ela possui um Timer que permite desligá-la em um período configurado, sem riscos de que passe a noite inteira funcionando!', 1700.00, 'Philco', 'http://www.extra-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=182770954');

insert into produto values (10, 5, 'Cafeteira Nespresso Inissia', 'Cafeteira Nespresso Inissia Preparo de Espresso e Longo, 19 Bar de Pressão – Vermelha', 'Tirar um café expresso com a cremosidade ideal pode ser mais simples do que parece. Você não vai precisar entrar em um curso de barista: é só apertar um botão na cafeteira Inissia! Compacta e linda, ela é a menor máquina da Nespresso e foi fabricada na cor vermelha. Servirá até como um item de decoração para ser exposta na estante, na mesa, na bancada da cozinha ou no escritório. Ela é capaz de preparar café expresso ou longo. Sem sujeira, sem errar na quantidade de pó e de água, a cafeteira utiliza um sistema de cápsulas e já vem com 16 delas, para você experimentar as opções de sabores e intensidade que terá à sua disposição. ', 345.90, 'Nespresso', 'http://www.extra-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=244269335');
insert into produto values (11, 5, 'Fritadeira Elétrica Philco Air Fry', 'Fritadeira Elétrica Philco Air Fry Saúde com Capacidade 2,8L - Branca', 'Com a Philco Air Fry Saúde, as frituras podem voltar a fazer parte do menu da sua casa sem peso na consciência ou preocupações com a saúde. Essa fritadeira permite o preparo de receitas saborosas com nenhuma ou pouca quantidade de óleo. Ela permite reduzir até 80% da gordura e acaba com a fumaça pela casa! Possui seletor de temperatura tem sete opções, 2,8 litros de capacidade e 1300 Watts de potência. Seu timer de 30 minutos permite programar o funcionamento. O aparelho tem um sistema de segurança que o desliga em caso de superaquecimento – evitando acidentes.. E a limpeza é fácil, já que o cesto é removível e pode ser lavado em máquina de lavar louças.', 295.00, 'Philco', 'http://www.extra-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=134851503');
*/

select * from categoria_produto;
/*
insert into categoria_produto values (1, 'Informatica');
insert into categoria_produto values (2, 'Telefonia');
insert into categoria_produto values (3, 'Eletrodoméstico');
insert into categoria_produto values (4, 'Tv e Vídeo');
insert into categoria_produto values (5, 'Eletroportáteis');
*/


select * from status;

/*
insert into status values(1,'Aguardando analise de crédito');
insert into status values(2,'Pedido aprovado');
insert into status values(3,'Pedido rejeitado');
insert into status values(4,'Aguardando pagamento');
insert into status values(5,'Pagamento não realizado');
insert into status values(6,'Aguardando envio');
insert into status values(7,'Pedido enviado');
*/

/*
aguardando analise de credito
pedido aprovado
pedido rejeitado
aguardando pagamento
pagamento realizado
pagamento nao realizado
aguardando envio
pedido enviado



*/
