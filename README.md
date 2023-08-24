# material_de_estudo
Sistema de Gerenciamento de Notas de Alunos

Este é um pequeno projeto em Ruby que implementa um sistema de gerenciamento de notas de alunos. O projeto inclui a definição da classe `Alunos`, que permite armazenar informações sobre os alunos, suas notas e calcular suas médias.

## Funcionalidades

- Criação de instâncias da classe `Alunos` com nome, matéria, nota1 e nota2.
- Cálculo da média das notas de cada aluno.
- Exibição dos resultados, incluindo nome, matéria e média.

## Como Usar

1. Clone este repositório para o seu computador.
2. Certifique-se de que tenha o Ruby instalado.
3. Execute o script `main.rb` para ver os resultados dos alunos pré-definidos na lista.

## Exemplo de Uso

```ruby
lista = [
  { nome: "Raoni", materia: "matematica", nota1: 10, nota2: 2 },
  { nome: "Tatiana", materia: "matematica", nota1: 9, nota2: 6 },
  { nome: "Liz", materia: "matematica", nota1: 10, nota2: 10 }
]

for i in lista
  aluno = Alunos.new(i[:nome], i[:materia], i[:nota1], i[:nota2])
  aluno.mostrar_resultados
end

Contribuições
Contribuições são bem-vindas! Se você quiser adicionar novas funcionalidades, resolver problemas existentes ou melhorar o código de alguma forma, sinta-se à vontade para fazer um fork deste repositório e enviar um pull request.

