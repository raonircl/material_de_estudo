op = nil
@conta = { agencia: "2033", num_conta: 3215, saldo: 0 }
@subconta = []

def deposito
  valor = gets.chomp.to_f
  @conta[:saldo] += valor
  time = Time.now
  @subconta << { tipo: "entrada", valor: valor, hora: time }
end

def saque
  valor = gets.chomp.to_f
  @conta[:saldo] -= valor
  time = Time.now
  @subconta << { tipo: "saida", valor: valor, hora: time }

end

def total_entrada
  total_entrada = 0
  @subconta.each do |movimentacao|
    total_entrada += movimentacao[:valor] if movimentacao[:tipo].eql?("entrada")
  end
  total_entrada
end

def total_saida
  total_saida = 0
  @subconta.each do |movimentacao|
    total_saida += movimentacao[:valor] if movimentacao[:tipo].eql?("saida")
  end
  total_saida
end

loop do
  puts "1. Deposito\n2. Saque\n3. Total na conta\n4. Conta detalhada\n5. Total de Entrada\n6. Total de saída\n0. Sair!"
  op = gets.chomp.to_i
  case

    when op == 1
      puts "-----------------------"
      puts "Valor de deposito"
      deposito
      puts "ação registrada!"
      puts "Seu saldo atual é de: #{@conta[:saldo]}"
      puts "-----------------------"

    when op == 2
      puts "-----------------------"
      puts "Valor do saque"
      saque
      puts "ação registrada"
      puts "Seu saldo atual é de: #{@conta[:saldo]}"
      puts "-----------------------"
    
    when op == 3
      puts "-----------------------"
      puts "Saldo total: #{@conta[:saldo]}"
      puts "-----------------------"

    when op == 4
      puts "-----------------------"
      puts "Entradas"
      @subconta.each {|movimentacao| puts "Valores de entrada: #{movimentacao[:valor]} : #{movimentacao[:hora]}" if movimentacao[:tipo].eql?("entrada")}
      puts "Saídas"
      @subconta.each {|movimentacao| puts "Valores de saída: #{movimentacao[:valor]} : #{movimentacao[:hora]}" if movimentacao[:tipo].eql?("saida")}
      puts "-----------------------"
      puts "Saldo: #{@conta[:saldo]}"
      puts "-----------------------"

    when op == 5
      puts "-----------------------"
      @subconta.each {|movimentacao| puts "Valores de entrada: #{movimentacao[:valor]} : #{movimentacao[:hora]}" if movimentacao[:tipo].eql?("entrada")}
      puts "Saldo: #{total_entrada}"
      puts "-----------------------"

    when op == 6
      puts "-----------------------"
      @subconta.each {|movimentacao| puts "Valores de saída: #{movimentacao[:valor]} : #{movimentacao[:hora]}" if movimentacao[:tipo].eql?("saida")}
      puts "Saldo: #{total_saida}"
      puts "-----------------------"

    when op == 0
      puts "Até mais!"
      string = @subconta
      save = File.open("../atividades/texto.txt", "a+")
      save.puts(string)
      save.close
      file = File.readlines("../atividades/texto.txt")
      puts file
      break

  end
end

#print "#{@conta}\n"
puts @conta
puts @subconta
