import 'package:flutter/material.dart';
import 'package:rec/pokemon_model.dart'; 

class PokedexController {
  // Cria a lista de Pokémon
  List<Pokemon> pokemons = [
    Pokemon(
      nome: 'Pikachu',
      tipo: 'Eletrico',
      descricao: 'Este Pokémon tem bolsas de armazenamento de eletricidade nas bochechas',
      pokedexNumber: 25,
      habilidades: ['Estático', 'Pára-raios'],
      imageUrl: 'assets/pikachu.png',
    ),
    Pokemon(
      nome: 'Charizard',
      tipo: 'Fogo/Voador',
      descricao: 'Ele cospe fogo quente o suficiente para derreter pedras. Pode causar incêndios florestais ao soprar chamas.',
      pokedexNumber: 6,
      habilidades: ['Chama', 'Energia Solar'],
      imageUrl: 'assets/charizard.png',
    ),
    Pokemon(
      nome: 'Bulbassauro',
      tipo: 'Grama/Veneno',
      descricao: 'Ele carrega a semente de uma planta em suas costas desde o nascimento. A semente se desenvolve lentamente.',
      pokedexNumber: 15,
      habilidades: ['Luz solar', 'Envenenamento'],
      imageUrl: 'assets/bulbassauro.png',
    )
  ];
}
