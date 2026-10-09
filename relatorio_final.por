
programa
{
    funcao inicio()
    {
        // Vetores de tamanho fixo
        cadeia nomes[100]
        real precos[100]
        cadeia categorias[100]
        cadeia categorias_unicas[100]

        inteiro quantidade_produtos
        inteiro quantidade_categorias = 0
        inteiro quantidade_filtrados = 0
        inteiro indice
        inteiro posicao
        inteiro opcao

        real valor_filtro
        real menor_preco
        real maior_preco
        real soma_precos = 0.0
        real media_precos

        real preco_temporario
        cadeia nome_temporario
        cadeia categoria_temporaria
        logico categoria_repetida

        // Cadastro de produtos
        escreva("Quantos produtos deseja cadastrar? ")
        leia(quantidade_produtos)

        se (quantidade_produtos <= 0 ou quantidade_produtos > 100)
        {
            escreva("Quantidade inválida!\n")
            retorne
        }

        para (indice = 0; indice < quantidade_produtos; indice++)
        {
            escreva("\nCadastro do produto ", indice + 1, "\n")

            escreva("Nome: ")
            leia(nomes[indice])

            escreva("Preço: R$ ")
            leia(precos[indice])

            escreva("Categoria: ")
            leia(categorias[indice])
        }

        // Relatório de produtos
        escreva("\n=== PRODUTOS CADASTRADOS ===\n")

        para (indice = 0; indice < quantidade_produtos; indice++)
        {
            escreva("Nome: ", nomes[indice], "\n")
            escreva("Preço: R$ ", precos[indice], "\n")
            escreva("Categoria: ", categorias[indice], "\n")
            escreva("-------------------------\n")
        }

        // Filtragem por preço
        escreva("\n=== FILTRAGEM POR PREÇO ===\n")
        escreva("1 - Acima do valor\n")
        escreva("2 - Abaixo do valor\n")

        escreva("Escolha uma opção: ")
        leia(opcao)

        escreva("Digite o valor: R$ ")
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

                quantidade_filtrados++
            }
        }

        se (quantidade_filtrados == 0)
        {
            escreva("Nenhum produto encontrado.\n")
        }

        // Ordenação crescente com Bubble Sort
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
            escreva(nomes[indice], " - R$ ", precos[indice], "\n")
        }

        // Ordem decrescente
        escreva("\n=== ORDEM DECRESCENTE ===\n")

        para (indice = quantidade_produtos - 1; indice >= 0; indice--)
        {
            escreva(nomes[indice], " - R$ ", precos[indice], "\n")
        }

        // Categorias únicas
        para (indice = 0; indice < quantidade_produtos; indice++)
        {
            categoria_repetida = falso

            para (posicao = 0; posicao < quantidade_categorias; posicao++)
            {
                se (categorias[indice] == categorias_unicas[posicao])
                {
                    categoria_repetida = verdadeiro
                }
            }

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

        // Estatísticas dos preços
        menor_preco = precos[0]
        maior_preco = precos[0]

        para (indice = 0; indice < quantidade_produtos; indice++)
        {
            se (precos[indice] < menor_preco)
            {
                menor_preco = precos[indice]
            }

            se (precos[indice] > maior_preco)
            {
                maior_preco = precos[indice]
            }

            soma_precos = soma_precos + precos[indice]
        }

        media_precos = soma_precos / quantidade_produtos

        escreva("\n=== ESTATÍSTICAS ===\n")
        escreva("Menor preço: R$ ", menor_preco, "\n")
        escreva("Maior preço: R$ ", maior_preco, "\n")
        escreva("Média dos preços: R$ ", media_precos, "\n")

        // Relatório final
        escreva("\n=== RELATÓRIO FINALIZADO ===\n")
        escreva("Total de produtos: ", quantidade_produtos, "\n")
        escreva("Produtos filtrados: ", quantidade_filtrados, "\n")
        escreva("Categorias diferentes: ", quantidade_categorias, "\n")
    }
}
