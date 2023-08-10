class EducationInfoResultDto {
  EducationInfoResultDto({
    this.fiftyPotalEduInfo,
  });

  EducationInfoResultDto.fromJson(dynamic json) {
    fiftyPotalEduInfo = json['FiftyPotalEduInfo'] != null
        ? FiftyPotalEduInfo.fromJson(json['FiftyPotalEduInfo'])
        : null;
  }

  FiftyPotalEduInfo? fiftyPotalEduInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (fiftyPotalEduInfo != null) {
      map['FiftyPotalEduInfo'] = fiftyPotalEduInfo?.toJson();
    }
    return map;
  }
}

class FiftyPotalEduInfo {
  FiftyPotalEduInfo({
    this.listTotalCount,
    this.result,
    this.row,
  });

  FiftyPotalEduInfo.fromJson(dynamic json) {
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
    this.lctno,
    this.lctnm,
    this.regstde,
    this.regedde,
    this.crstde,
    this.credde,
    this.hr,
    this.crpplstat,
    this.lctstat,
    this.lctcost,
    this.crurl,
  });

  Row.fromJson(dynamic json) {
    lctno = json['LCT_NO'];
    lctnm = json['LCT_NM'];
    regstde = json['REG_STDE'];
    regedde = json['REG_EDDE'];
    crstde = json['CR_STDE'];
    credde = json['CR_EDDE'];
    hr = json['HR'];
    crpplstat = json['CR_PPL_STAT'];
    lctstat = json['LCT_STAT'];
    lctcost = json['LCT_COST'];
    crurl = json['CR_URL'];
  }

  String? lctno;
  String? lctnm;
  String? regstde;
  String? regedde;
  String? crstde;
  String? credde;
  String? hr;
  String? crpplstat;
  String? lctstat;
  String? lctcost;
  String? crurl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['LCT_NO'] = lctno;
    map['LCT_NM'] = lctnm;
    map['REG_STDE'] = regstde;
    map['REG_EDDE'] = regedde;
    map['CR_STDE'] = crstde;
    map['CR_EDDE'] = credde;
    map['HR'] = hr;
    map['CR_PPL_STAT'] = crpplstat;
    map['LCT_STAT'] = lctstat;
    map['LCT_COST'] = lctcost;
    map['CR_URL'] = crurl;
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
