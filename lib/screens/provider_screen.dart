import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../presentation/providers/pokemon_provider.dart';
import '../presentation/providers/services_providers.dart';
import '../presentation/providers/simple_name_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart';

// class ProviderScreen extends ConsumerStatefulWidget {
//   @override
//   _ProviderScreenState createState() => _ProviderScreenState();
// }

// class _ProviderScreenState extends ConsumerState<ServicesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final name = ref.watch(simpleNameProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Provider'),
//       ),
//       body: Center(
//         child: Text(name),
//       ),
//     );
//   }
// }

// class ServicesScreen extends ConsumerStatefulWidget {
//   @override
//   _ServicesScreenState createState() => _ServicesScreenState();
// }

// class _ServicesScreenState extends ConsumerState<ServicesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final services = ref.watch(servicesProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Provider'),
//       ),
//       body: ListView.builder(
//         itemCount: services.length,
//         itemBuilder: (context, index) {
//           final service = services[index];
//           return ListTile(
//             leading: Image.asset(service['image']),
//             title: Text(service['title']),
//             subtitle: Text(service['description']),
//           );
//         },
//       ),
//     );
//   }
// }

// class FutureProviderScreen extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final pokemonAsync = ref.watch(pokemonNameProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Future Provider'),
//       ),
//       body: Center(
//         child: pokemonAsync.when(
//           data: (name) => Text(name),
//           error: (_, __) => const Text('No se pudo cargar el nombre'),
//           loading: () => const CircularProgressIndicator(),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.refresh),
//         onPressed: () {
//           ref.read(pokemonIdProvider.notifier).update((state) => state + 1);
//         },
//       ),
//     );
//   }
// }

class Pokemon {
  final int id;
  final String name;
  final int weight;
  final String sprite;

  Pokemon({
    this.id,
    this.name,
    this.weight,
    this.sprite,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      name: json['name'],
      weight: json['weight'],
      sprite: json['sprites']['front_default'],
    );
  }
}

class PokemonListWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonFuture = ref.watch(pokemonsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Ingrid'),
      ),
      body: Center(
        child: pokemonFuture.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => Text('Error: $err'),
          data: (pokemons) {
            return ListView.builder(
              itemCount: pokemons.length,
              itemBuilder: (context, index) {
                final pokemon = pokemons[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/details_screen', arguments: {
                      'name': pokemon.name,
                    });
                  },
                  child: ListTile(
                    title: Text(pokemon.name),
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
    











    
//      FutureProvider(
//       create: (_) => pokemonProvider.getPokemons(),
//       initialData: [],
//       child: Consumer<List<Pokemon>>(
//         builder: (_, pokemons, __) => ListView.builder(
//           itemCount: pokemons.length,
//           itemBuilder: (_, index) => ListTile(
//             title: Text(pokemons[index].name),
//           ),
//         ),
//       ),
//     );
//   }
// }