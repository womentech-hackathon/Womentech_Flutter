import 'package:flutter/material.dart';
import 'package:women_tech_flutter/core/result.dart';
import 'package:women_tech_flutter/domain/use_case/latest_education_list_use_case.dart';
import 'package:women_tech_flutter/presentation/education/education_state.dart';

class EducationViewModel with ChangeNotifier {
  final LatestEducationListUseCase _latestEducationListUseCase;

  EducationViewModel(this._latestEducationListUseCase) {
    getEducationInfoList(1, 10);
  }

  EducationState _state = const EducationState();

  EducationState get state => _state;

  void getEducationInfoList(int startIndex, int endIndex) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    final result =
        await _latestEducationListUseCase.execute(startIndex, endIndex);

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(
          isLoading: false,
          latestEducationInfoList: data,
        );
      case Error(:final e):
        _state = state.copyWith(isLoading: false);
    }
    notifyListeners();
  }
}
