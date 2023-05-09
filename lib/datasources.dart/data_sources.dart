import 'dart:convert';
import 'package:http/http.dart' as http;
import '../screens/provider_screen.dart';
import 'dart:ui' as ui;

class PokemonDataSource {
  Future<List<Pokemon>> getPokemons() async {
    final response =
        await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon'));
    final jsonData = json.decode(response.body);
    final List<Pokemon> pokemons = [];
    for (final pokemon in jsonData['results']) {
      final id = int.parse(pokemon['url'].split('/')[6]);
      final name = pokemon['name'];
      pokemons.add(Pokemon(id: id, name: name));
    }

    return pokemons;
  }
}

class PokemonesDataSource {
  Future<Pokemon> getPokemon(String name) async {
    final response =
        await http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon/$name"));
    if (response.statusCode == 200) {
      final pokemonJson = json.decode(response.body);
      final pokemon = Pokemon.fromJson(pokemonJson);
      return pokemon;
    } else {
      throw Exception("Failed to load pokemon");
    }
  }
}



// "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png"