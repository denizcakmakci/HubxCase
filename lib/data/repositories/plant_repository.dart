import 'package:hubx_case_study/core/constants/api_endpoints.dart';
import 'package:hubx_case_study/core/errors/either.dart';
import 'package:hubx_case_study/core/errors/error_separator.dart';
import 'package:hubx_case_study/core/errors/failure.dart';
import 'package:hubx_case_study/data/dtos/plant_card_item_dto.dart';
import 'package:hubx_case_study/data/dtos/plants_category_dto.dart';
import 'package:hubx_case_study/domain/i_repositories/i_plant_repository.dart';
import 'package:hubx_case_study/infra/network/network_manager.dart';

class PlantRepository extends IPlantRepository {
  PlantRepository({
    required this.networkManager,
    required this.errorSeparator,
  });
  final NetworkManager networkManager;
  final ErrorSeparator errorSeparator;

  @override
  Future<Either<Failure, List<PlantCardItemDto>>> getPlantsCard() async {
    try {
      final result = await networkManager.get<List<PlantCardItemDto>>(
        path: ApiEndpoints.getQuestions,
        fromJson: (json) {
          final list = json as List<dynamic>;
          return list
              .map((e) => PlantCardItemDto.fromJson(e as Map<String, dynamic>))
              .toList();
        },
      );
      return Either.right(result);
    } on Exception catch (error, stacktrace) {
      final e = errorSeparator.createError(
        error,
        stacktrace,
        'getPlantsCard ERROR',
        arg: const ErrorSeparatorArgument(),
      );

      return Either.left(Failure.createError(error: e));
    }
  }

  @override
  Future<Either<Failure, PlantCategoryDto>> getPlantsCategory() async {
    try {
      final result = await networkManager.get<PlantCategoryDto>(
        path: ApiEndpoints.getCategories,
        fromJson: (json) =>
            PlantCategoryDto.fromJson(json as Map<String, dynamic>),
      );
      return Either.right(result);
    } on Exception catch (error, stacktrace) {
      final e = errorSeparator.createError(
        error,
        stacktrace,
        'getPlantsCategory ERROR',
        arg: const ErrorSeparatorArgument(isPlant: true),
      );

      return Either.left(Failure.createError(error: e));
    }
  }
}
