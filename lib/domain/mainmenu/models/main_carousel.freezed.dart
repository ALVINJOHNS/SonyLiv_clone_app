// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_carousel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainMenuCarousel _$MainMenuCarouselFromJson(Map<String, dynamic> json) {
  return _MainMenuCarousel.fromJson(json);
}

/// @nodoc
mixin _$MainMenuCarousel {
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainMenuCarouselCopyWith<MainMenuCarousel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainMenuCarouselCopyWith<$Res> {
  factory $MainMenuCarouselCopyWith(
          MainMenuCarousel value, $Res Function(MainMenuCarousel) then) =
      _$MainMenuCarouselCopyWithImpl<$Res, MainMenuCarousel>;
  @useResult
  $Res call({@JsonKey(name: 'poster_path') String posterPath});
}

/// @nodoc
class _$MainMenuCarouselCopyWithImpl<$Res, $Val extends MainMenuCarousel>
    implements $MainMenuCarouselCopyWith<$Res> {
  _$MainMenuCarouselCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = null,
  }) {
    return _then(_value.copyWith(
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainMenuCarouselImplCopyWith<$Res>
    implements $MainMenuCarouselCopyWith<$Res> {
  factory _$$MainMenuCarouselImplCopyWith(_$MainMenuCarouselImpl value,
          $Res Function(_$MainMenuCarouselImpl) then) =
      __$$MainMenuCarouselImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'poster_path') String posterPath});
}

/// @nodoc
class __$$MainMenuCarouselImplCopyWithImpl<$Res>
    extends _$MainMenuCarouselCopyWithImpl<$Res, _$MainMenuCarouselImpl>
    implements _$$MainMenuCarouselImplCopyWith<$Res> {
  __$$MainMenuCarouselImplCopyWithImpl(_$MainMenuCarouselImpl _value,
      $Res Function(_$MainMenuCarouselImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = null,
  }) {
    return _then(_$MainMenuCarouselImpl(
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainMenuCarouselImpl implements _MainMenuCarousel {
  _$MainMenuCarouselImpl(
      {@JsonKey(name: 'poster_path') required this.posterPath});

  factory _$MainMenuCarouselImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainMenuCarouselImplFromJson(json);

  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;

  @override
  String toString() {
    return 'MainMenuCarousel(posterPath: $posterPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainMenuCarouselImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainMenuCarouselImplCopyWith<_$MainMenuCarouselImpl> get copyWith =>
      __$$MainMenuCarouselImplCopyWithImpl<_$MainMenuCarouselImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainMenuCarouselImplToJson(
      this,
    );
  }
}

abstract class _MainMenuCarousel implements MainMenuCarousel {
  factory _MainMenuCarousel(
          {@JsonKey(name: 'poster_path') required final String posterPath}) =
      _$MainMenuCarouselImpl;

  factory _MainMenuCarousel.fromJson(Map<String, dynamic> json) =
      _$MainMenuCarouselImpl.fromJson;

  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$MainMenuCarouselImplCopyWith<_$MainMenuCarouselImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
