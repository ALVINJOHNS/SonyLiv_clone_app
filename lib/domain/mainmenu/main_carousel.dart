import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_carousel.freezed.dart';
part 'main_carousel.g.dart';

@freezed
class MainMenuCarousel with _$MainMenuCarousel{
   factory MainMenuCarousel(
    {
    @JsonKey(name: 'poster_path')  required String posterPath,
    }
  ) =  _MainMenuCarousel;

  factory MainMenuCarousel.fromJson(Map<String, dynamic> json) => _$MainMenuCarouselFromJson(json);
}