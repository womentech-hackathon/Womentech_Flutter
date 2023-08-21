class EducationDataResultDto {
  EducationDataResultDto({
    required this.tbViewProgram,
  });

  late final TbViewProgram tbViewProgram;

  EducationDataResultDto.fromJson(Map<String, dynamic> json) {
    tbViewProgram = TbViewProgram.fromJson(json['tbViewProgram']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['tbViewProgram'] = tbViewProgram.toJson();
    return _data;
  }
}

class TbViewProgram {
  TbViewProgram({
    required this.listTotalCount,
    required this.result,
    required this.row,
  });

  late final int listTotalCount;
  late final Result result;
  late final List<Row> row;

  TbViewProgram.fromJson(Map<String, dynamic> json) {
    listTotalCount = json['list_total_count'];
    result = Result.fromJson(json['RESULT']);
    row = List.from(json['row']).map((e) => Row.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['list_total_count'] = listTotalCount;
    _data['RESULT'] = result.toJson();
    _data['row'] = row.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Result {
  Result({
    required this.CODE,
    required this.MESSAGE,
  });

  late final String CODE;
  late final String MESSAGE;

  Result.fromJson(Map<String, dynamic> json) {
    CODE = json['CODE'];
    MESSAGE = json['MESSAGE'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['CODE'] = CODE;
    _data['MESSAGE'] = MESSAGE;
    return _data;
  }
}

class Row {
  Row({
    required this.IDX,
    required this.SUBJECT,
    required this.STARTDATE,
    required this.ENDDATE,
    required this.APPLICATIONSTARTDATE,
    required this.APPLICATIONENDDATE,
    required this.REGISTPEOPLE,
    required this.REGISTCOST,
    required this.APPLYSTATE,
    required this.VIEWDETAIL,
  });

  late final String IDX;
  late final String SUBJECT;
  late final String STARTDATE;
  late final String ENDDATE;
  late final String APPLICATIONSTARTDATE;
  late final String APPLICATIONENDDATE;
  late final String REGISTPEOPLE;
  late final String REGISTCOST;
  late final String APPLYSTATE;
  late final String VIEWDETAIL;

  Row.fromJson(Map<String, dynamic> json) {
    IDX = json['IDX'];
    SUBJECT = json['SUBJECT'];
    STARTDATE = json['STARTDATE'];
    ENDDATE = json['ENDDATE'];
    APPLICATIONSTARTDATE = json['APPLICATIONSTARTDATE'];
    APPLICATIONENDDATE = json['APPLICATIONENDDATE'];
    REGISTPEOPLE = json['REGISTPEOPLE'];
    REGISTCOST = json['REGISTCOST'];
    APPLYSTATE = json['APPLY_STATE'];
    VIEWDETAIL = json['VIEWDETAIL'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['IDX'] = IDX;
    _data['SUBJECT'] = SUBJECT;
    _data['STARTDATE'] = STARTDATE;
    _data['ENDDATE'] = ENDDATE;
    _data['APPLICATIONSTARTDATE'] = APPLICATIONSTARTDATE;
    _data['APPLICATIONENDDATE'] = APPLICATIONENDDATE;
    _data['REGISTPEOPLE'] = REGISTPEOPLE;
    _data['REGISTCOST'] = REGISTCOST;
    _data['APPLY_STATE'] = APPLYSTATE;
    _data['VIEWDETAIL'] = VIEWDETAIL;
    return _data;
  }
}
