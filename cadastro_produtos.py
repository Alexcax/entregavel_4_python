produtos = []

quantidade_de_produtos = int(input("Quantos produtos deseja cadastrar? "))

for i in range(quantidade_de_produtos):
    print(f"\nCadastro do produto {i + 1}:")
    nome_produto = input("Nome do produto: ")
    preco_produto = float(input("Preço do produto: R$ "))
    categoria_produto = input("Categoria do produto: ")

    produto = {
        "nome": nome_produto,
        "preco": preco_produto,
        "categoria": categoria_produto
    }

    produtos.append(produto)

print("\n=== PRODUTOS CADASTRADOS ===")

for produto in produtos:
    print(f"Nome: {produto['nome']}")
    print(f"Preço: R$ {produto['preco']:.2f}")
    print(f"Categoria: {produto['categoria']}")
    print("-------------------------")