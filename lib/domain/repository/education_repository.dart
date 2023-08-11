import 'package:women_tech_flutter/domain/education/education_data.dart';

abstract interface class EducationRepository {
  Future<EducationData> getEducationData(int startIndex, int endIndex);
}
