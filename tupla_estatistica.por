
programa
{
    funcao inicio()
    {
        cadeia nomes[100]
        real precos[100]
        cadeia categorias[100]

        inteiro quantidade_produtos
        inteiro indice

        real menor_preco
        real maior_preco
        real soma_precos = 0.0
        real media_precos

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

            escreva("Nome do produto: ")
            leia(nomes[indice])

            escreva("Preço do produto: R$ ")
            leia(precos[indice])

            escreva("Categoria do produto: ")
            leia(categorias[indice])
        }

        // Inicialização com o preço do primeiro produto
        menor_preco = precos[0]
        maior_preco = precos[0]

        // Cálculo do menor, maior e soma dos preços
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

        // Cálculo da média
        media_precos = soma_precos / quantidade_produtos

        escreva("\n=== ESTATÍSTICAS DOS PRODUTOS ===\n")
        escreva("Menor preço: R$ ", menor_preco, "\n")
        escreva("Maior preço: R$ ", maior_preco, "\n")
        escreva("Média dos preços: R$ ", media_precos, "\n")
    }
}
