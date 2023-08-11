import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'education_info.freezed.dart';

part 'education_info.g.dart';

@freezed
class EducationInfo with _$EducationInfo {
  const factory EducationInfo({
    required String subject,
    required String educationStartDate,
    required String educationEndDate,
    required String applicationStatDate,
    required String applicationEndDate,
    required String applyState,
    required String cost,
  }) = _EducationInfo;

  factory EducationInfo.fromJson(Map<String, Object?> json) =>
      _$EducationInfoFromJson(json);
}
