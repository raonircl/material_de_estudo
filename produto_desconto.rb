class Produto

  def initialize(nome, validade, preco)
    @nome = nome
    @validade = validade
    @preco = desconto(preco)  
  end

  def mostrar_produto
    puts "produto: #{@nome}, Data de validade: #{@validade}, PReço: #{@preco}"
  end

  private

  def desconto(preco)
    if @validade <= 30
      preco * 0.9
    else
      preco
    end

  end

end

produto = Produto.new("Chocolate", 30, 15.00)

puts produto.mostrar_produto
