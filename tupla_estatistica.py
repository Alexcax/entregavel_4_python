
produtos = []

quantidade_produtos = int(input("Quantos produtos deseja cadastrar? "))

for indice in range(quantidade_produtos):
    print(f"\nCadastro do produto {indice + 1}")

    nome_produto = input("Nome do produto: ")
    preco_produto = float(input("Preço do produto: R$ "))
    categoria_produto = input("Categoria do produto: ")

    produto = {
        "nome": nome_produto,
        "preco": preco_produto,
        "categoria": categoria_produto
    }

    produtos.append(produto)

# Lista contendo apenas os preços
precos = []

for produto in produtos:
    precos.append(produto["preco"])

# Cálculo das estatísticas
if len(precos) > 0:
    menor_preco = min(precos)
    maior_preco = max(precos)
    media_precos = sum(precos) / len(precos)

    # Tupla imutável com as estatísticas
    estatisticas = (menor_preco, maior_preco, media_precos)

    print("\n=== ESTATÍSTICAS DOS PRODUTOS ===")
    print(f"Menor preço: R$ {estatisticas[0]:.2f}")
    print(f"Maior preço: R$ {estatisticas[1]:.2f}")
    print(f"Média dos preços: R$ {estatisticas[2]:.2f}")
else:
    print("\nNenhum produto foi cadastrado.")
