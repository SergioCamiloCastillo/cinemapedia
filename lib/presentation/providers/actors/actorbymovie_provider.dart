import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/providers/movies/movieinfo_provider.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:riverpod/riverpod.dart';

final actorsByMovieProvider =
    StateNotifierProvider<MovieMapNotifier, Map<String, Movie>>((ref) {
  final movieRepository = ref.watch(movieRepositoryProvider);
  return MovieMapNotifier(getMovie: movieRepository.getMovieById);
});

typedef GetActorsCallback = Future<List<Actor>> Function(String movieId);
class ActorsByMovieNotifier extends StateNotifier<Map<String, List<Actor>>>{
  final GetActorsCallback getActors;

  ActorsByMovieNotifier({required this.getActors});
  
}