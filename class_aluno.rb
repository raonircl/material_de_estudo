class Alunos
  @nome
  @materia
  attr_reader :nota1, :nota2

  def initialize (nome, materia, nota1, nota2)
    @nome = nome
    @materia = materia
    @nota1 = nota1
    @nota2 = nota2
  end

  def media 
    media = (@nota1 + @nota2)/2
  end

  def mostrar_resultados
    puts "Nome: #{@nome}, Materia: #{@materia}, Média: #{media} "
  end

end

lista = [ { nome: "Raoni", materia: "matematica", nota1: 10, nota2: 2 }, { nome: "Tatiana", materia: "matematica", nota1: 9, nota2: 6 }, { nome: "Liz", materia: "matematica", nota1: 10, nota2: 10 } ]

for i in lista
  aluno = Alunos.new(i[:nome], i[:materia], i[:nota1], i[:nota2])
  aluno.mostrar_resultados
end
