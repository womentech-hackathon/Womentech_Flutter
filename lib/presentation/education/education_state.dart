import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:women_tech_flutter/domain/education/education_info.dart';

part 'education_state.freezed.dart';

part 'education_state.g.dart';

@freezed
class EducationState with _$EducationState {
  const factory EducationState({
    @Default([]) List<EducationInfo> latestEducationInfoList,
    @Default(false) bool isLoading,
  }) = _EducationState;

  factory EducationState.fromJson(Map<String, Object?> json) =>
      _$EducationStateFromJson(json);
}
