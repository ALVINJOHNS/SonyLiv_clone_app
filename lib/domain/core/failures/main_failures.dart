import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failures.freezed.dart'; //ptf

@freezed
class MainFailures with _$MainFailures {
  const factory MainFailures.clientFailure() = _ClientFailure;
  const factory MainFailures.serverFailure() = _ServerFailure;

}
