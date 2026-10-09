
# Sistema de gerenciamento de produtos

produtos = []

# Cadastro dos produtos
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

# Relatório dos produtos cadastrados
print("\n=== PRODUTOS CADASTRADOS ===")

for produto in produtos:
    print(f"Nome: {produto['nome']}")
    print(f"Preço: R$ {produto['preco']:.2f}")
    print(f"Categoria: {produto['categoria']}")
    print("-------------------------")

# Filtragem por preço
print("\n=== FILTRAGEM POR PREÇO ===")
print("1 - Produtos acima do valor")
print("2 - Produtos abaixo do valor")

opcao = int(input("Escolha uma opção: "))
valor_filtro = float(input("Digite o valor: R$ "))

print("\n=== PRODUTOS FILTRADOS ===")

quantidade_filtrados = 0

for produto in produtos:
    if (opcao == 1 and produto["preco"] > valor_filtro) or (
        opcao == 2 and produto["preco"] < valor_filtro
    ):
        print(f"Nome: {produto['nome']}")
        print(f"Preço: R$ {produto['preco']:.2f}")
        print(f"Categoria: {produto['categoria']}")
        print("-------------------------")
        quantidade_filtrados += 1

if quantidade_filtrados == 0:
    print("Nenhum produto encontrado.")

# Ordenação crescente
produtos.sort(key=lambda produto: produto["preco"])

print("\n=== ORDEM CRESCENTE ===")

for produto in produtos:
    print(f"{produto['nome']} - R$ {produto['preco']:.2f}")

# Ordenação decrescente
produtos_decrescentes = sorted(
    produtos,
    key=lambda produto: produto["preco"],
    reverse=True
)

print("\n=== ORDEM DECRESCENTE ===")

for produto in produtos_decrescentes:
    print(f"{produto['nome']} - R$ {produto['preco']:.2f}")

# Conjunto de categorias únicas
categorias_unicas = set()

for produto in produtos:
    categorias_unicas.add(produto["categoria"])

print("\n=== CATEGORIAS ÚNICAS ===")

for categoria in sorted(categorias_unicas):
    print(f"Categoria: {categoria}")

print(f"Total de categorias: {len(categorias_unicas)}")

# Tupla de estatísticas
precos = []

for produto in produtos:
    precos.append(produto["preco"])

print("\n=== ESTATÍSTICAS ===")

if len(precos) > 0:
    menor_preco = min(precos)
    maior_preco = max(precos)
    media_precos = sum(precos) / len(precos)

    estatisticas = (menor_preco, maior_preco, media_precos)

    print(f"Menor preço: R$ {estatisticas[0]:.2f}")
    print(f"Maior preço: R$ {estatisticas[1]:.2f}")
    print(f"Média dos preços: R$ {estatisticas[2]:.2f}")
else:
    print("Nenhum produto cadastrado.")

print("\n=== RELATÓRIO FINALIZADO ===")
print(f"Total de produtos: {len(produtos)}")
print(f"Produtos filtrados: {quantidade_filtrados}")
print(f"Categorias diferentes: {len(categorias_unicas)}")
