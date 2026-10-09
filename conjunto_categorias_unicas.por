
programa
{
    funcao inicio()
    {
        cadeia nomes[100]
        real precos[100]
        cadeia categorias[100]
        cadeia categorias_unicas[100]

        inteiro quantidade_produtos
        inteiro quantidade_categorias = 0
        inteiro indice
        inteiro posicao
        logico categoria_repetida

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

        // Identificação das categorias únicas
        para (indice = 0; indice < quantidade_produtos; indice++)
        {
            categoria_repetida = falso

            // Verifica se a categoria já foi adicionada
            para (posicao = 0; posicao < quantidade_categorias; posicao++)
            {
                se (categorias[indice] == categorias_unicas[posicao])
                {
                    categoria_repetida = verdadeiro
                }
            }

            // Adiciona somente categorias não repetidas
            se (categoria_repetida == falso)
            {
                categorias_unicas[quantidade_categorias] = categorias[indice]
                quantidade_categorias++
            }
        }

        escreva("\n=== CATEGORIAS ÚNICAS ===\n")

        para (indice = 0; indice < quantidade_categorias; indice++)
        {
            escreva("Categoria: ", categorias_unicas[indice], "\n")
        }

        escreva("\nTotal de categorias únicas: ", quantidade_categorias, "\n")
    }
}
