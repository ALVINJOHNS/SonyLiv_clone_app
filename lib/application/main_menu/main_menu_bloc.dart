import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sonyliv/domain/core/failures/main_failures.dart';
import 'package:sonyliv/domain/mainmenu/i_main_carousel_repo.dart';

import '../../domain/mainmenu/models/main_carousel.dart';
part 'main_menu_event.dart';
part 'main_menu_state.dart';
part 'main_menu_bloc.freezed.dart';

class MainMenuBloc extends Bloc<MainMenuCarouselEvent, MainMenuCarouselState> {
  final IMainCarouselRepo _mainCarouselRepo;
  MainMenuBloc(this._mainCarouselRepo)
      : super(MainMenuCarouselState.initial()) {
    on<_GetMainMenuCarouselImages>((event, emit) async {
      emit(state.copyWith(isLoading: true, mainMenuCarouselOption: none()));
      final Either<MainFailures, List<MainMenuCarousel>>
          mainMenuCarouselOption =
          await _mainCarouselRepo.getMainMenuCarouselImages();
      emit(mainMenuCarouselOption.fold(
        (l) => state.copyWith(
            isLoading: false, mainMenuCarouselOption: some(left(l))),
        (r) => state.copyWith(
            isLoading: false, 
            mainMenuCarouselImages: r,
            mainMenuCarouselOption: some(right(r))),
      ));
    });
  }
}
