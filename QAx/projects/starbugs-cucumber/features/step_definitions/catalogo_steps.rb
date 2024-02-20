Quando('acesso a página principal da starbugs') do
  @home.open
end
  
Então('eu devo ver uma lista de cafés disponíveis') do
   expect(@home.coffee_list.size).to be > 0
end

Dado('que estou na página principal da starbugs') do
    @home.open
end

Dado('que desejo comprar o seguinte produto:') do |table|     
    @product = table.rows_hash
    
  end

Quando('inicio a compra desse item') do
    @home.buy(@product[:name])
end

Então('devo ver a página de checkout com os detalhes de protudo') do
    @checkout.assert_product_details(@product)
end

Então('o valor total da compra deve ser de {string}') do |total_price|
    @checkout.assert_total_price(total_price)
end

Então('devo ver um popup informando que o produto está indisponivel') do
    @popup.have_text('produto indisponivel')
end