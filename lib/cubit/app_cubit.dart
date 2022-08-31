import 'package:bloc/bloc.dart';
import 'package:travel_app/Services/data_services.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServer data;
  late final places;
  getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      print(
          "=========================================================================++++++++++++++++++++++++++");
      print(places);
      emit(LoadedState(places));
    } catch (s) {
      print(s);
    }
  }
}
