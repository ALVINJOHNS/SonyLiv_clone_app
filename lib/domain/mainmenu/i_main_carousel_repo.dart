import 'package:dartz/dartz.dart';
import 'package:sonyliv/domain/core/failures/main_failures.dart';
import 'package:sonyliv/domain/mainmenu/models/main_carousel.dart';

abstract class IMainCarouselRepo {
  Future<Either<MainFailures, List<MainMenuCarousel>>>
      getMainMenuCarouselImages();
}
