import 'package:bloc/bloc.dart';
import 'package:discover_four_hours/model/data_model.dart';
import 'package:discover_four_hours/services/data_services.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppCubit extends Cubit<CubitState> {
  AppCubit({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;

  void getData() async {
    emit(LoadingState());
    places = await data.getInfo();
    emit(LoadedState(places));
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }
}
