class Pokemon {
  final String nome;
  final String tipo;
  final String descricao;
  final int pokedexNumber;
  final List<String> habilidades;
  final String imageUrl;

  Pokemon({
    required this.nome,
    required this.tipo,
    required this.descricao,
    required this.pokedexNumber,
    required this.habilidades,
    required this.imageUrl,
  });
}
