import 'package:women_tech_flutter/education/data/data_source/api/education_api.dart';
import 'package:women_tech_flutter/education/data/mapper/education_info_mapper.dart';
import 'package:women_tech_flutter/education/domain/model/education_data.dart';
import 'package:women_tech_flutter/education/domain/repository/education_repository.dart';

class SeniorEducationRepositoryImpl implements EducationRepository {
  final _api = EducationApi();

  @override
  Future<EducationData> getEducationData(int startIndex, int endIndex) async {
    try {
      final resultDto = await _api.getEducationData(startIndex, endIndex);
      return resultDto.toEducationData();
    } catch (e) {
      throw Exception('education api 에러');
    }
  }
}
