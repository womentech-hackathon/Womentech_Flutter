import 'package:injectable/injectable.dart';
import 'package:women_tech_flutter/core/result.dart';
import 'package:women_tech_flutter/domain/education/education_info.dart';
import 'package:women_tech_flutter/domain/repository/education_repository.dart';

@singleton
class GetEducationInfoListUseCase {
  final EducationRepository _educationRepository;

  GetEducationInfoListUseCase(this._educationRepository);

  Future<Result<List<EducationInfo>>> execute(
      int startIndex, int endIndex) async {
    try {
      final educationData =
          await _educationRepository.getEducationData(startIndex, endIndex);
      return Result.success(educationData.educationInfoList);
    } catch (err) {
      return const Result.error('use case 에러');
    }
  }
}
