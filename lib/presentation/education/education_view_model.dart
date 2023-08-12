import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:women_tech_flutter/core/result.dart';
import 'package:women_tech_flutter/domain/use_case/get_education_data_use_case.dart';
import 'package:women_tech_flutter/presentation/education/education_state.dart';

@injectable
class EducationViewModel with ChangeNotifier {
  final GetEducationInfoListUseCase _getEducationDataUseCase;

  EducationViewModel(this._getEducationDataUseCase) {
    fetchEducationData(1, 10);
  }

  EducationState _state = const EducationState();

  EducationState get state => _state;

  void fetchEducationData(int startIndex, int endIndex) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    final result = await _getEducationDataUseCase.execute(startIndex, endIndex);

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(
          educationInfoList: data,
          isLoading: false,
        );
      case Error(:final e):
        _state = state.copyWith(isLoading: false);
    }
    notifyListeners();
  }
}
