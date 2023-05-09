import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../config/random_generation.dart';

final servicesProvider = Provider<List<Map<String, dynamic>>>((ref) {
  return [
    {
      'title': 'Servicio 1',
      'description': 'Descripción del servicio 1',
      'image': 'assets/images/braid4.jpg',
    },
    {
      'title': 'Servicio 2',
      'description': 'Descripción del servicio 2',
      'image': 'assets/images/profile.jpg',
    },
    {
      'title': 'Servicio 3',
      'description': 'Descripción del servicio 3',
      'image': 'assets/images/rayos.jpg',
    },
  ];
});
