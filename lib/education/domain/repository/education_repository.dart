import 'package:women_tech_flutter/education/domain/model/education_data.dart';

abstract interface class EducationRepository {
  Future<EducationData> getEducationData(int startIndex, int endIndex);
}
