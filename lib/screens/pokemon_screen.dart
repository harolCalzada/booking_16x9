import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:salon_app/presentation/providers/simple_name_provider.dart';
import 'package:salon_app/screens/provider_screen.dart';

import '../presentation/providers/pokemon_provider.dart';

class PokemonDetails extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    final pokemon = ref.watch(pokeProvider(args['name']));
    return pokemon.when(
      loading: () => Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stackTrace) => Scaffold(
        body: Center(
          child: Text("Error loading pokemon"),
        ),
      ),
      data: (pokemonData) => Scaffold(
        appBar: AppBar(
          title: Text(pokemonData.name),
        ),
        body: Column(
          children: [
            Image.network(pokemonData.sprite),
            Text("Nombre: ${pokemonData.name}"),
            Text("Peso: ${pokemonData.weight}"),
          ],
        ),
      ),
    );
  }
}
