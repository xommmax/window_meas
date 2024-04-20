import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  static void init() {
    // ..registerSingleton<BreedRepository>(BreedRepository())
    // ..registerFactory<BreedsCubit>(() => BreedsCubit(
    //       breedRepository: getIt(),
    //     ))
    // ..registerFactoryParam<BreedDetailsCubit, Breed, void>((breed, _) => BreedDetailsCubit(
    //       breed: breed,
    //       breedRepository: getIt(),
    //     ));
  }
}
