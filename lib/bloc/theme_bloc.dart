import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeState get initialState => ThemeState(ThemeData());

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if(event is ChangeThemeEvent){
      yield ThemeState(event.themeData);
    }
  }

  
  
}
