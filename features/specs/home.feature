#language:pt

Funcionalidade: Home page
 
    Como usuario
    Eu gostaria de visualizar a Home page sem estar autenticado
    para que eu possa visualizar as principais ofertas do site
    
    Contexto: Visualiza a pagina do site pequenamiami
          Dado que visualizo a url "http://www.pequenamiami.com.br/"


    Cenario: Visualizar as descriçoes e preços de um produto
         Dado visualizo as ultimas ofertas na pagina principal do site
         Quando que visualizo as ofertas principais
          | descricao       | preco |
          | Pijama 12 meses | 79,00 |
         Então vou visualizar a descrição e o Preço para cada produto
   
     Cenario: Visualizar as promoçoes de um produto no Instagram
         Dado que visualizo as promoções de produtos
         Quando seleciono um produto com promoção de sorteio
         Então visualizo o produto escolhido na pagina do Instagram 

         