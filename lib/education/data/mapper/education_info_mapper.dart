import 'package:women_tech_flutter/education/data/dto/education_data_result_dto.dart';
import 'package:women_tech_flutter/education/domain/model/education_data.dart';
import 'package:women_tech_flutter/education/domain/model/education_info.dart';

extension ToEducationData on EducationDataResultDto {
  EducationData toEducationData() {
    return EducationData(
      totalCount: tbViewProgram.listTotalCount,
      educationInfoList: List.generate(
        tbViewProgram.row.length,
        (index) {
          return EducationInfo(
            index: tbViewProgram.row[index].IDX,
            subject: tbViewProgram.row[index].SUBJECT,
            startDate: tbViewProgram.row[index].STARTDATE,
            endDate: tbViewProgram.row[index].ENDDATE,
            applyStartDate: tbViewProgram.row[index].APPLICATIONSTARTDATE,
            applyEndDate: tbViewProgram.row[index].APPLICATIONENDDATE,
            registerPeople: tbViewProgram.row[index].REGISTPEOPLE,
            registerCost: tbViewProgram.row[index].REGISTCOST,
            applyState: tbViewProgram.row[index].APPLYSTATE,
          );
        },
      ),
    );
  }
}
