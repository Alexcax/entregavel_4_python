
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

print("\n=== FILTRAGEM POR PREÇO ===")
print("1 - Produtos acima do valor")
print("2 - Produtos abaixo do valor")

opcao = int(input("Escolha uma opção: "))
valor_filtro = float(input("Digite o valor para filtrar: R$ "))

print("\n=== PRODUTOS FILTRADOS ===")

for produto in produtos:
    if opcao == 1 and produto["preco"] > valor_filtro:
        print(f"Nome: {produto['nome']}")
        print(f"Preço: R$ {produto['preco']:.2f}")
        print(f"Categoria: {produto['categoria']}")
        print("-------------------------")

    elif opcao == 2 and produto["preco"] < valor_filtro:
        print(f"Nome: {produto['nome']}")
        print(f"Preço: R$ {produto['preco']:.2f}")
        print(f"Categoria: {produto['categoria']}")
        print("-------------------------")
