import 'package:women_tech_flutter/core/result.dart';
import 'package:women_tech_flutter/core/utils/sorted_by.dart';
import 'package:women_tech_flutter/education/domain/model/education_info.dart';
import 'package:women_tech_flutter/education/domain/repository/education_repository.dart';

class LatestEducationListUseCase {
  final EducationRepository _educationRepository;

  LatestEducationListUseCase(this._educationRepository);

  Future<Result<List<EducationInfo>>> execute(
      int startIndex, int endIndex) async {
    try {
      final educationData =
          await _educationRepository.getEducationData(startIndex, endIndex);
      final latestEducationInfoList = educationData.educationInfoList
          .sortedBy((a, b) => -a.index.compareTo(b.index));
      return Result.success(latestEducationInfoList);
    } catch (e) {
      return Result.error(
        Exception('use case 에러'),
      );
    }
  }
}
