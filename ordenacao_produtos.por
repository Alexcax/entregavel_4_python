
programa
{
    funcao inicio()
    {
        cadeia nomes[100]
        real precos[100]
        cadeia categorias[100]

        inteiro quantidade_produtos
        inteiro indice
        inteiro posicao

        cadeia nome_temporario
        cadeia categoria_temporaria
        real preco_temporario

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

        // Ordenação crescente usando Bubble Sort
        para (indice = 0; indice < quantidade_produtos - 1; indice++)
        {
            para (posicao = 0; posicao < quantidade_produtos - 1 - indice; posicao++)
            {
                se (precos[posicao] > precos[posicao + 1])
                {
                    preco_temporario = precos[posicao]
                    precos[posicao] = precos[posicao + 1]
                    precos[posicao + 1] = preco_temporario

                    nome_temporario = nomes[posicao]
                    nomes[posicao] = nomes[posicao + 1]
                    nomes[posicao + 1] = nome_temporario

                    categoria_temporaria = categorias[posicao]
                    categorias[posicao] = categorias[posicao + 1]
                    categorias[posicao + 1] = categoria_temporaria
                }
            }
        }

        escreva("\n=== ORDEM CRESCENTE ===\n")

        para (indice = 0; indice < quantidade_produtos; indice++)
        {
            escreva("Nome: ", nomes[indice], "\n")
            escreva("Preço: R$ ", precos[indice], "\n")
            escreva("Categoria: ", categorias[indice], "\n")
            escreva("-------------------------\n")
        }

        // Exibição decrescente percorrendo o vetor ao contrário
        escreva("\n=== ORDEM DECRESCENTE ===\n")

        para (indice = quantidade_produtos - 1; indice >= 0; indice--)
        {
            escreva("Nome: ", nomes[indice], "\n")
            escreva("Preço: R$ ", precos[indice], "\n")
            escreva("Categoria: ", categorias[indice], "\n")
            escreva("-------------------------\n")
        }
    }
}
