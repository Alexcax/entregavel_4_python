
programa
{
    funcao inicio()
    {
        cadeia nomes[100]
        real precos[100]
        cadeia categorias[100]
        inteiro quantidade_produtos
        inteiro indice
        inteiro opcao
        real valor_filtro

        escreva("Quantos produtos deseja cadastrar? ")
        leia(quantidade_produtos)

        se (quantidade_produtos < 0 ou quantidade_produtos > 100)
        {
            escreva("Quantidade inválida!\n")
            retorne
        }

        para (indice = 0; indice < quantidade_produtos; indice++)
        {
            escreva("\nCadastro do produto ", indice + 1, "\n")

            escreva("Nome do produto: ")
            leia(nomes[indice])

            escreva("Preço do produto: R$ ")
            leia(precos[indice])

            escreva("Categoria do produto: ")
            leia(categorias[indice])
        }

        escreva("\n=== FILTRAGEM POR PREÇO ===\n")
        escreva("1 - Produtos acima do valor\n")
        escreva("2 - Produtos abaixo do valor\n")

        escreva("Escolha uma opção: ")
        leia(opcao)

        escreva("Digite o valor para filtrar: R$ ")
        leia(valor_filtro)

        escreva("\n=== PRODUTOS FILTRADOS ===\n")

        para (indice = 0; indice < quantidade_produtos; indice++)
        {
            se ((opcao == 1 e precos[indice] > valor_filtro) ou
                (opcao == 2 e precos[indice] < valor_filtro))
            {
                escreva("Nome: ", nomes[indice], "\n")
                escreva("Preço: R$ ", precos[indice], "\n")
                escreva("Categoria: ", categorias[indice], "\n")
                escreva("-------------------------\n")
            }
        }
    }
}
