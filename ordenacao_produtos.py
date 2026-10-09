
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

# Ordenação crescente usando sort()
produtos.sort(key=lambda produto: produto["preco"])

print("\n=== PRODUTOS EM ORDEM CRESCENTE ===")

for produto in produtos:
    print(f"Nome: {produto['nome']}")
    print(f"Preço: R$ {produto['preco']:.2f}")
    print(f"Categoria: {produto['categoria']}")
    print("-------------------------")

# Ordenação decrescente usando sorted()
produtos_decrescentes = sorted(
    produtos,
    key=lambda produto: produto["preco"],
    reverse=True
)

print("\n=== PRODUTOS EM ORDEM DECRESCENTE ===")

for produto in produtos_decrescentes:
    print(f"Nome: {produto['nome']}")
    print(f"Preço: R$ {produto['preco']:.2f}")
    print(f"Categoria: {produto['categoria']}")
    print("-------------------------")
