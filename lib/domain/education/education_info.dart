import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'education_info.freezed.dart';

part 'education_info.g.dart';

@freezed
class EducationInfo with _$EducationInfo {
  const factory EducationInfo({
    required String index,
    required String subject,
    required String startDate,
    required String endDate,
    required String applyStartDate,
    required String applyEndDate,
    required String registerPeople,
    required String registerCost,
    required String applyState,
  }) = _EducationInfo;

  factory EducationInfo.fromJson(Map<String, Object?> json) =>
      _$EducationInfoFromJson(json);
}
