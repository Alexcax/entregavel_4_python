
programa
{
    funcao inicio()
    {
        cadeia nomes[100]
        real precos[100]
        cadeia categorias[100]
        inteiro quantidade_produtos
        inteiro indice

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

        escreva("\n=== PRODUTOS CADASTRADOS ===\n")

        para (indice = 0; indice < quantidade_produtos; indice++)
        {
            escreva("Nome: ", nomes[indice], "\n")
            escreva("Preço: R$ ", precos[indice], "\n")
            escreva("Categoria: ", categorias[indice], "\n")
            escreva("-------------------------\n")
        }
    }
}
