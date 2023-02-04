

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:mvvm_project/core/constant.dart';
import 'package:crypto/crypto.dart';
import 'package:mvvm_project/features/data/request/request.dart';
import 'package:mvvm_project/features/domain/usecase/home_usecase.dart';
import 'dart:convert';

import 'package:mvvm_project/features/presentation/home/home_page_state.dart';

class CharactersViewModel extends ChangeNotifier {


  HomeUseCase homeUseCase;


  CharactersViewModel(this.homeUseCase);


  @override
  void dispose() {
    // TODO: implement dispose

  }

  @override
  void start() {
    // TODO: implement start
    _state=HomeLoadingState();
  }


  HomeState _state = HomeInitialState();

  HomeState get state => _state;


  Future<void> getCharacters() async {
    notifyListeners();

    final now = DateTime.now();


    ( await homeUseCase.execute(FootballUseCaseInput("${now.year}-${now.month.toString().padLeft(2,'0')}-${(now.day-1).toString().padLeft(2,'0')}","2023-${now.month.toString().padLeft(2,'0')}-${(now.day+1).toString().padLeft(2,'0')}",20))).fold(
            (failure) => {

            _state = HomeFailureState(message: failure.message),
             notifyListeners(),

        }, (data) => {

    if (data.matches!.isEmpty) {
        _state = HomeEmptyState(),

  } else {
    _state = HomeSuccessState(data),
    },
    notifyListeners(),
    });

  }
}

