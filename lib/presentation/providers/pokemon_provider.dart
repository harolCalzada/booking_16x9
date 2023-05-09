import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:salon_app/datasources.dart/data_sources.dart';
import '../../screens/provider_screen.dart';
import 'dart:ui' as ui;
import 'package:http/http.dart' as http;

final pokemonsProvider = FutureProvider<List<Pokemon>>((ref) {
  return PokemonDataSource().getPokemons();
});

final pokeProvider =
    FutureProvider.family<Pokemon, String>((ref, pokemoName) async {
  final response = await PokemonesDataSource().getPokemon(pokemoName);
  print("responseProvider");
  print(response);
  // final decoded = json.decode(response);
  // final name = decoded["name"];
  // final weight = decoded["weight"];
  // final sprite = decoded["sprites"]["front_default"];

  // return Pokemon(
  //   name: name,
  //   weight: weight,
  //   sprite: sprite,
  // );

  return response;
});
