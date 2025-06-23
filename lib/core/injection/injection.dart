import 'package:hubx_case_study/core/errors/defaults_error_factory.dart';
import 'package:hubx_case_study/core/errors/error_separator.dart';
import 'package:hubx_case_study/data/repositories/plant_repository.dart';
import 'package:hubx_case_study/data/use_cases/get_plant_category_use_case.dart';
import 'package:hubx_case_study/data/use_cases/get_plants_card_use_case.dart';
import 'package:hubx_case_study/infra/network/dio_manager.dart';
import 'package:hubx_case_study/infra/network/network_manager.dart';
import 'package:provider/provider.dart';

List<Provider> globalProviders = [
  Provider<ErrorSeparator>(
    create: (_) => ErrorSeparator(DefaultErrorFactory()),
  ),
  Provider<NetworkManager>(
    create: (context) => NetworkManager(
      dio: DioManager.getDio(),
    ),
  ),
  Provider<PlantRepository>(
    create: (context) => PlantRepository(
      networkManager: context.read<NetworkManager>(),
      errorSeparator: context.read<ErrorSeparator>(),
    ),
  ),
  Provider<GetPlantCategoryUseCase>(
    create: (context) =>
        GetPlantCategoryUseCase(context.read<PlantRepository>()),
  ),
  Provider<GetPlantsCardUseCase>(
    create: (context) => GetPlantsCardUseCase(context.read<PlantRepository>()),
  ),
];
