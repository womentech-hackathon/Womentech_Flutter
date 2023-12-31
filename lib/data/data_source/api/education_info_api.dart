import 'dart:convert';
import 'package:women_tech_flutter/data/dto/education_data_result_dto.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EducationInfoApi {
  final _baseUrl = dotenv.env['BASE_URL'];
  final _key = dotenv.env['KEY'];

  Future<EducationDataResultDto> getEducationData(
      int startIndex, int endIndex) async {
    final url = '$_baseUrl/$_key/json/tbViewProgram/$startIndex/$endIndex';
    final http.Response response = await http.get(Uri.parse(url));

    Map<String, dynamic> jsonString = jsonDecode(response.body);
    return EducationDataResultDto.fromJson(jsonString);
  }
}
