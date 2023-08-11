class EducationDataResultDto {
  EducationDataResultDto({
    this.tbViewProgram,
  });

  EducationDataResultDto.fromJson(dynamic json) {
    tbViewProgram = json['tbViewProgram'] != null
        ? TbViewProgram.fromJson(json['tbViewProgram'])
        : null;
  }

  TbViewProgram? tbViewProgram;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (tbViewProgram != null) {
      map['tbViewProgram'] = tbViewProgram?.toJson();
    }
    return map;
  }
}

class TbViewProgram {
  TbViewProgram({
    this.listTotalCount,
    this.result,
    this.row,
  });

  TbViewProgram.fromJson(dynamic json) {
    listTotalCount = json['list_total_count'];
    result = json['RESULT'] != null ? Result.fromJson(json['RESULT']) : null;
    if (json['row'] != null) {
      row = [];
      json['row'].forEach((v) {
        row?.add(Row.fromJson(v));
      });
    }
  }

  num? listTotalCount;
  Result? result;
  List<Row>? row;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['list_total_count'] = listTotalCount;
    if (result != null) {
      map['RESULT'] = result?.toJson();
    }
    if (row != null) {
      map['row'] = row?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Row {
  Row({
    this.idx,
    this.subject,
    this.startdate,
    this.enddate,
    this.applicationstartdate,
    this.applicationenddate,
    this.registpeople,
    this.registcost,
    this.applystate,
    this.viewdetail,
  });

  Row.fromJson(dynamic json) {
    idx = json['IDX'];
    subject = json['SUBJECT'];
    startdate = json['STARTDATE'];
    enddate = json['ENDDATE'];
    applicationstartdate = json['APPLICATIONSTARTDATE'];
    applicationenddate = json['APPLICATIONENDDATE'];
    registpeople = json['REGISTPEOPLE'];
    registcost = json['REGISTCOST'];
    applystate = json['APPLY_STATE'];
    viewdetail = json['VIEWDETAIL'];
  }

  String? idx;
  String? subject;
  String? startdate;
  String? enddate;
  String? applicationstartdate;
  String? applicationenddate;
  String? registpeople;
  String? registcost;
  String? applystate;
  String? viewdetail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['IDX'] = idx;
    map['SUBJECT'] = subject;
    map['STARTDATE'] = startdate;
    map['ENDDATE'] = enddate;
    map['APPLICATIONSTARTDATE'] = applicationstartdate;
    map['APPLICATIONENDDATE'] = applicationenddate;
    map['REGISTPEOPLE'] = registpeople;
    map['REGISTCOST'] = registcost;
    map['APPLY_STATE'] = applystate;
    map['VIEWDETAIL'] = viewdetail;
    return map;
  }
}

class Result {
  Result({
    this.code,
    this.message,
  });

  Result.fromJson(dynamic json) {
    code = json['CODE'];
    message = json['MESSAGE'];
  }

  String? code;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['CODE'] = code;
    map['MESSAGE'] = message;
    return map;
  }
}
