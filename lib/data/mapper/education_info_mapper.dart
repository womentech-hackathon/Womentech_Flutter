import 'package:women_tech_flutter/data/dto/education_data_result_dto.dart';
import 'package:women_tech_flutter/domain/education/education_data.dart';
import 'package:women_tech_flutter/domain/education/education_info.dart';

extension ToEducationData on EducationDataResultDto {
  EducationData toEducationData() {
    return EducationData(
      totalCount: tbViewProgram?.listTotalCount ?? 0,
      educationInfoList: List.generate(
        tbViewProgram?.row?.length ?? 0,
        (index) => EducationInfo(
          subject: tbViewProgram!.row![index].subject ?? '',
          educationStartDate: tbViewProgram!.row![index].startdate ?? '',
          educationEndDate: tbViewProgram!.row![index].enddate ?? '',
          applicationStatDate:
              tbViewProgram!.row![index].applicationstartdate ?? '',
          applicationEndDate:
              tbViewProgram!.row![index].applicationenddate ?? '',
          applyState: tbViewProgram!.row![index].applystate ?? '',
          cost: tbViewProgram!.row![index].registcost ?? '',
        ),
      ),
    );
  }
}
