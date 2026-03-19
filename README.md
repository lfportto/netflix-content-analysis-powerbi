# Dashboard do Catálogo de Conteúdo da Netflix (2008-2021)

📄 [English version](README_English.md)

## Descrição
Este projeto consiste no desenvolvimento de um dashboard interativo no Power BI para análise do catálogo de conteúdos da Netflix.
A solução foi construída com base em um dataset histórico contendo informações sobre filmes e séries disponibilizados na plataforma entre 2008 e 2021, com o objetivo de transformar dados brutos em insights relevantes por meio de um fluxo completo de análise de dados. Foi utilizada uma abordagem ETL (Extract, Transform, Load).

## 🎯 Objetivo do Projeto
Este é um projeto pessoal desenvolvido com foco no aprimoramento de habilidades em análise de dados, incluindo:
- Manipulação e tratamento de dados com SQL;
- Modelagem de dados;
- Criação de métricas e cálculos com DAX;
- Desenvolvimento de dashboards interativos.

Além disso, o dashboard foi projetado para responder às seguintes perguntas analíticas:
- O catálogo da Netflix cresceu ao longo do tempo?
- Em quais períodos houve maior expansão?
- Houve mudança no público-alvo ao longo dos anos?
- Quais tipos de conteúdo predominam no catálogo?
- Quais gêneros são mais frequentes?
- Quais países mais produzem conteúdo?
- O catálogo é concentrado ou distribuído globalmente?
- Quem são os diretores e atores mais recorrentes?
- Qual é o padrão de duração dos filmes?

## Tecnologias Utilizadas
- **MySQL**
  - Armazenamento dos dados;
  - Tratamento, limpeza e padronização de encoding (UTF-8);
  - Criação de colunas para conversão de unidades;
  - Criação de colunas de apoio para ordenação.  
  📁 [Veja o script final já tratado aqui](netflix_titles_final.sql)

- **Power BI**
  - Conexão com o banco de dados MySQL;
  - Transformações complementares no Power Query;
  - Modelagem de dados (relacionamentos e estrutura);
  - Criação de diversas medidas utilizando DAX;
  - Desenvolvimento de visualizações interativas;
  - Construção do dashboard final.

## Técnicas e Funcionalidades Utilizadas
- **Interatividade e Dinamismo**
  - `Parâmetro de campo (Troca dinâmica de colunas):` Permite ao usuário alternar dimensões em um mesmo visual (ex: classificação indicativa BR vs EUA).
  - `Parâmetro numérico (Seleção com top N):` Permite ao usuário definir quantos elementos serão exibidos em rankings.
  - `Títulos dinâmicos (SELECTEDVALUE):` Títulos que se atualizam automaticamente conforme os filtros aplicados.

- **Lógica Analítica com DAX**
  - `Ranking dinâmico com RANKX:` Criação de rankings dinâmicos com base em métricas.
  - `Top N com medida:` Controle de Top N utilizando medidas, garantindo consistência mesmo com filtros dinâmicos.
  - `Medidas sensíveis ao contexto:` Medidas que se adaptam ao contexto de filtros do usuário.

- **Visual e Experiência do Usuário (UX)**
  - `Formatação condicional via medida:` Aplicação dinâmica de cores em gráficos com base em regras.
  - `Destaque automático:` Destaque visual do elemento mais relevante em gráficos.
  - `Tema personalizado do Power BI:` Criação de um tema para o dashboard, contendo a paleta de cores e ícones personalizados embutidos, utilizados na formatação condiconal (📁 [Veja o script do tema aqui](netflix_dashboard_pbi_theme.json)).
  - `Renderização de imagens via URL:` Exibição dinâmica de bandeiras por país, tornando tabelas mais visuais.

- **Modelagem de Dados**
  - Separação de colunas multivaloradas (gêneros, elenco, diretores, países).
  - Estrutura dos dados no esquema estrela.
  - Uso de colunas auxiliares para ordenar categorias corretamente.

## Acesse o Dashboard
[Clique aqui para acessar o dashboard no Power BI](https://app.powerbi.com/view?r=eyJrIjoiYjc5OWVlMzUtMmZlNS00NWVhLWI3OTQtYzJiODkyNjcyMTkxIiwidCI6ImNmNzJlMmJkLTdhMmItNDc4My1iZGViLTM5ZDU3YjA3Zjc2ZiIsImMiOjR9&pageName=36e59d76a072732c0365)

## Estrutura do Dashboard
### Executive Overview
Visão geral com principais indicadores e distribuição do catálogo.  
🎯 **Objetivo:** fornecer um resumo executivo para rápida compreensão do cenário geral.

![Aba1](https://github.com/user-attachments/assets/2aec2ef2-ded4-4724-9a4a-d4959c53b070)

### Temporal Evolution
Análise da evolução do catálogo ao longo do tempo.  
🎯 **Objetivo:** identificar crescimento, padrões e mudanças ao longo dos anos.

![Aba2](https://github.com/user-attachments/assets/b97390af-396a-48c7-b88b-67c7a8016336)

### Geographic Distribution
Distribuição geográfica dos conteúdos.  
🎯 **Objetivo:** analisar origem dos títulos e concentração global.

![Aba3](https://github.com/user-attachments/assets/7a033cd8-e56f-4684-a4fe-0a2395e0fe53)

### Profile Analysis
Análise do perfil editorial do catálogo.  
🎯 **Objetivo:** entender gêneros, profissionais e características dos conteúdos.

![Aba4](https://github.com/user-attachments/assets/3e11c867-4caf-44eb-9a54-6f14fe91a665)

### Database
Tabela interativa com todos os dados.  
🎯 **Objetivo:** permitir exploração detalhada pelo usuário.

![Aba5](https://github.com/user-attachments/assets/49a32c85-6912-42e1-b71d-8a7cb7a8102a)

### Tooltip
Em todas as abas, no canto superior direito, há um ícone de informação em que, ao usuário passar o mouse por cima, revela-se uma tooltip com informações sobre o dashboard, sobre a fonte dos dados e o propósito deste projeto. A imagem abaixo mostra a primeira aba, mas dessa vez com a tooltip informativa aberta.

![Tooltip](https://github.com/user-attachments/assets/522295c0-cb4f-48da-95a7-a6f0d856d968)

## Paleta de Cores
![Paleta](https://github.com/user-attachments/assets/cda46bf5-23ac-4261-aafc-db6bd484b7ca)

## Principais Insights
&nbsp;&nbsp;&nbsp;&nbsp;A análise do catálogo da Netflix ao longo do período de 2008 a 2021 revela padrões claros de crescimento, posicionamento estratégico e distribuição de conteúdo.

&nbsp;&nbsp;&nbsp;&nbsp;Observa-se, primeiramente, que a expansão do catálogo não ocorreu de forma linear. Até aproximadamente 2013, o volume de títulos adicionados ainda era relativamente baixo, refletindo um estágio inicial da operação de streaming. A partir de 2016, no entanto, há uma aceleração significativa no crescimento, culminando em um pico em 2019, ano que concentra `o maior número de adições ao catálogo`. Esse comportamento sugere uma forte estratégia de expansão global por parte da plataforma, com aumento expressivo na aquisição e produção de conteúdo.

&nbsp;&nbsp;&nbsp;&nbsp;Em relação ao perfil etário, os dados indicam uma `predominância consistente de conteúdos voltados ao público adulto`. Classificações equivalentes a 18 anos lideram com ampla margem em todos os períodos analisados, seguidas pelas classificações intermediárias (14 e 12 anos). Essa distribuição se mantém relativamente estável ao longo do tempo, o que sugere que, apesar do crescimento do catálogo, `não houve uma mudança significativa no público-alvo` da plataforma — que permanece majoritariamente voltado para audiências mais maduras.

&nbsp;&nbsp;&nbsp;&nbsp;Do ponto de vista editorial, o catálogo apresenta forte concentração em alguns gêneros específicos. Produções classificadas como `International Movies, Dramas e Comedies dominam amplamente a base de dados`, indicando uma estratégia clara de diversificação cultural aliada a conteúdos de apelo amplo. Ao segmentar por tipo, percebe-se que filmes tendem a apresentar maior diversidade de gêneros, enquanto séries mostram uma concentração mais evidente em categorias como drama, crime e produções voltadas para TV, evidenciando diferenças estruturais entre os formatos.

&nbsp;&nbsp;&nbsp;&nbsp;A análise geográfica revela que, embora o catálogo seja global — com conteúdos provenientes de 122 países —, ele ainda apresenta um alto grau de concentração. `Os Estados Unidos são responsáveis por aproximadamente 46% de todos os títulos`, consolidando-se como o principal polo de produção. Em seguida, `destaca-se a Índia`, o que reforça a relevância de mercados internacionais na estratégia da plataforma. Ainda assim, a diferença entre o primeiro e os demais países evidencia uma distribuição desigual da produção.

&nbsp;&nbsp;&nbsp;&nbsp;No que diz respeito ao período de lançamento dos conteúdos, a grande maioria dos títulos disponíveis foi produzida a partir dos anos 2000, com forte concentração na década de 2010. Conteúdos do século XX representam uma parcela muito pequena do catálogo, indicando um `foco claro em produções mais recentes`, alinhado com o comportamento esperado de plataformas de streaming.

&nbsp;&nbsp;&nbsp;&nbsp;Por fim, a análise de profissionais envolvidos nas produções revela padrões interessantes de recorrência. Determinados diretores e atores aparecem com alta frequência, especialmente em contextos específicos como `produções indianas`. Além disso, há diferenças marcantes entre filmes e séries, tanto em termos de profissionais recorrentes quanto de estrutura de produção, o que reforça a importância de segmentar análises por tipo de conteúdo.

&nbsp;&nbsp;&nbsp;&nbsp;De forma geral, os dados evidenciam que o catálogo da Netflix combina uma estratégia de expansão acelerada, forte presença internacional e concentração em conteúdos voltados ao público adulto, com predominância de produções recentes e diversificação controlada por gênero e origem.

## Fonte de Dados
Os dados utilizados são públicos e foram obtidos no site `Kaggle`. Você pode acessar a base na página:  
🔗 [Netflix Movies and TV Shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)

## Licença
Este projeto está licenciado sob a [Licença MIT](LICENSE).

## Tags
`#PowerBI` `#AnaliseDeDados` `#Dashboard` `#EngenhariaDeDados` `#DataAnalysis` `#DataEngineering` `#ETL` `#BusinessIntelligence` `#BI` `#DataVisualization` `#PublicData` `#MySQL` `#SQL` `#OpenData` `#Netflix` `#PortfolioProject`
