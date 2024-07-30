import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sonyliv/domain/core/api_end_points.dart';
import 'package:sonyliv/domain/core/failures/main_failures.dart';
import 'package:sonyliv/domain/mainmenu/models/main_carousel.dart';

import '../../domain/mainmenu/i_main_carousel_repo.dart';

class MainMenuRepository implements IMainCarouselRepo {
  @override
  Future<Either<MainFailures, List<MainMenuCarousel>>>
      getMainMenuCarouselImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.mainMenuCarousel);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<MainMenuCarousel> mainMenuCarouselList = [];
        for (final dynamic item in response.data) {
          mainMenuCarouselList.add(MainMenuCarousel.fromJson(item as Map<String, dynamic>));
        }
        return Right(mainMenuCarouselList);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailure());
    }
  }
}
