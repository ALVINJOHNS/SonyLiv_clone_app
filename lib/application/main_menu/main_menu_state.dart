part of 'main_menu_bloc.dart';

@freezed
class MainMenuCarouselState with _$MainMenuCarouselState {
  const factory MainMenuCarouselState(
      {required bool isLoading,
      List<MainMenuCarousel>? mainMenuCarouselImages,
      required Option<Either<MainFailures, List<MainMenuCarousel>>>
          mainMenuCarouselOption}) = _MainMenuCarouselState;

  factory MainMenuCarouselState.initial() {
    return MainMenuCarouselState(isLoading: false,mainMenuCarouselOption: None());
  }
}
