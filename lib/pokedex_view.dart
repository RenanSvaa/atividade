import 'package:flutter/material.dart';
import 'package:rec/pokedex_controller.dart';
import 'package:rec/pokemon_model.dart';
import 'package:google_fonts/google_fonts.dart';

class PokedexView extends StatelessWidget {
  final PokedexController controller = PokedexController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pokedex', textAlign: TextAlign.center, style: TextStyle(fontSize: 30 ,fontFamily: 'Pokemon'),),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 246, 2, 2),
              Colors.white,
            ],
          ),
        ),
        child: ListView.builder(
          itemCount: controller.pokemons.length,
          itemBuilder: (context, index) {
            final pokemon = controller.pokemons[index];
            return ListTile(
              leading: Image.network(
                pokemon.imageUrl,
                width: 80,
                height: 80,
              ),
              title: Text(pokemon.nome),
              subtitle: Text(pokemon.tipo, selectionColor: Colors.white,),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PokemonDetailsScreen(pokemon: pokemon),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}


class PokemonDetailsScreen extends StatelessWidget {
  final Pokemon pokemon;

  PokemonDetailsScreen({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(pokemon.nome), titleTextStyle: TextStyle(fontFamily: 'PokemonHo', fontSize: 30, color: Colors.black),//titulo pokemon
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 246, 2, 2),
              Colors.white,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  pokemon.imageUrl,
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Tipo: ${pokemon.tipo}',
                style: const TextStyle(fontSize: 14), 
              ),
              SizedBox(height: 10),
              Text(
                'Descricao: ${pokemon.descricao}',
                style: TextStyle(fontSize: 14,),
              ),
              SizedBox(height: 10),
              Text(
                'Pokedex Numero: ${pokemon.pokedexNumber}',
                style: TextStyle(fontSize: 14,),
              ),
              SizedBox(height: 10),
              Text(
                'Habilidades: ${pokemon.habilidades.join(", ")}',
                style: TextStyle(fontSize: 14,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
