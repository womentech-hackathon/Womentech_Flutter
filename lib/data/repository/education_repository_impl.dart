import 'package:injectable/injectable.dart';
import 'package:women_tech_flutter/data/data_source/api/education_info_api.dart';
import 'package:women_tech_flutter/data/mapper/education_info_mapper.dart';
import 'package:women_tech_flutter/domain/education/education_data.dart';
import 'package:women_tech_flutter/domain/repository/education_repository.dart';

@Singleton(as: EducationRepository)
class EducationRepositoryImpl implements EducationRepository {
  final EducationInfoApi _api;

  EducationRepositoryImpl(this._api);

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
