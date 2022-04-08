

import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<String>{
  ThemeCubit() : super("Systemowy");

  void toggleTheme({required String value}){
    emit(value);
  }

  @override
  String? fromJson(Map<String, dynamic> json) {
    return json["Systemowy"];
  }

  @override
  Map<String, dynamic>? toJson(String state) {
    return {"Systemowy": state};
  }
}