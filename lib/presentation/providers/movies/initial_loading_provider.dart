import 'package:riverpod/riverpod.dart';

import 'movies_providers.dart';

final initialLoadingProvider = Provider<bool>((ref) {
  final step1 = ref.watch(nowPlayingMoviesProvider).isEmpty;
  final step2 = ref.watch(nowPlayingMoviesProvider).isEmpty;
  final step3 = ref.watch(uncomingMoviesProvider).isEmpty;
  final step4 = ref.watch(topRatedMoviesProvider).isEmpty;
  if (step1 || step2 || step3 || step4) return true;
  return false;
});
