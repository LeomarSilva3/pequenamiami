Dado("que visualizo a url {string}") do |string|
  visit '/'
  
end

Então("visualizo as ultimas ofertas na pagina principal do site") do
   ofertas_principais = all('.produto-item') #busca todos os produtos
   expect(ofertas_principais.size).to be > 0
   puts ofertas_principais.size # busca a quantidade de produtos
end

Dado("que visualizo as ofertas principais") do |table|
  Produto = table.hashes
end

Então("vou visualizar a descrição e o Preço para cada produto") do

  Produto.each_with_index do |value,index|
  expect(Produto[index]).to have_text value[:descricao]
  expect(Produto[index]).to have_text value[:preco]
  end
end


Dado("que visualizo as promoções de produtos") do
 script= '$(".lightwidget-widget").attr("id", "tempId");'
 page.execute_script(script)

  within_frame('tempId') do 
      promocoes_instagram = all('.lightwidget__tile')
       expect(promocoes_instagram.size).to be > 0
       puts promocoes_instagram.size
  end
end

Quando("seleciono um produto com promoção de sorteio") do
 
end

Então("visualizo o produto escolhido na pagina do Instagram") do
 
end

