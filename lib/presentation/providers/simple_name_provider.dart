import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../config/random_generation.dart';

final simpleNameProvider = Provider.autoDispose<String>((ref) {
  return RandomGenerator.getRandomName();
});

// final simpleNamedProvider = Provider<String>((ref) {
//   return "juan carlos";
// });

// final ingridProvider = Provider<String>((ref) {
//   return RandomGenerator.getRandomName();
// });


