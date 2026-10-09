
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

# Criação do conjunto de categorias únicas
categorias_unicas = set()

for produto in produtos:
    categorias_unicas.add(produto["categoria"])

# Exibição das categorias sem repetição
print("\n=== CATEGORIAS ÚNICAS ===")

for categoria in categorias_unicas:
    print(f"Categoria: {categoria}")

print(f"\nTotal de categorias únicas: {len(categorias_unicas)}")
