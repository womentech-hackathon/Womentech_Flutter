import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:women_tech_flutter/education/domain/model/education_info.dart';

part 'education_data.freezed.dart';

part 'education_data.g.dart';

@freezed
class EducationData with _$EducationData {
  const factory EducationData({
    required int totalCount,
    required List<EducationInfo> educationInfoList,
  }) = _EducationData;

  factory EducationData.fromJson(Map<String, Object?> json) =>
      _$EducationDataFromJson(json);
}
