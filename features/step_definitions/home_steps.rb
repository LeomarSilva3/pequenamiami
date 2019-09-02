Dado("que visualizo a url {string}") do |string|
  @homepage.go 
end

Dado("visualizo as ultimas ofertas na pagina principal do site") do
   @homepage.ultimas_ofertas()
   expect(@homepage.ultimas_ofertas.size).to be > 0
   
end

Dado("que visualizo as ofertas principais") do |ofertas|
  Produto = ofertas.hashes
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
     
  end
end

Quando("seleciono um produto com promoção de sorteio") do
  script= '$(".lightwidget-widget").attr("id", "tempId");'
  page.execute_script(script)
 
  within_frame('tempId') do 
    promocoes_instagram = all('.lightwidget__tile')
    promocoes_instagram[0].click() 
  end
    
end

Então("visualizo o produto escolhido na pagina do Instagram") do
  visit('https://www.instagram.com/p/ByxP67ihOcb/')
  produto = find('.BrX75')
  expect(produto.text).to eql "pequenamiami"
  
end

