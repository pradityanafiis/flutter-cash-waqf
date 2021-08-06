import 'package:bloc/bloc.dart';
import 'package:flutter_cash_waqf/model/program_wakaf.dart';
import 'package:flutter_cash_waqf/services/waqf_program_service.dart';
import 'package:get_it/get_it.dart';

abstract class SingleWaqfProgramState {}

class SingleWaqfProgramInitialState extends SingleWaqfProgramState {}

class SingleWaqfProgramLoadingState extends SingleWaqfProgramState {}

class SingleWaqfProgramFailureState extends SingleWaqfProgramState {
  final String message;

  SingleWaqfProgramFailureState(this.message);
}

class SingleWaqfProgramSuccessState extends SingleWaqfProgramState {
  final ProgramWakaf programWakaf;

  SingleWaqfProgramSuccessState(this.programWakaf);
}

class SingleWaqfProgramCubit extends Cubit<SingleWaqfProgramState> {
  late final WaqfProgramService _waqfProgramService;

  SingleWaqfProgramCubit({WaqfProgramService? waqfProgramService})
      : super(SingleWaqfProgramInitialState()) {
    this._waqfProgramService =
        waqfProgramService ?? GetIt.I.get<WaqfProgramService>();
  }

  getSingle(int id) async {
    emit(SingleWaqfProgramLoadingState());
    final _response = await _waqfProgramService.getSingle(id);
    if (_response is Exception) {
      emit(SingleWaqfProgramFailureState(_response.toString()));
    } else {
      final _isError = _response['error'];
      if (_isError) {
        emit(SingleWaqfProgramFailureState(_response['message']));
      } else {
        emit(SingleWaqfProgramSuccessState(
            ProgramWakaf.createFromJson(_response['data'])));
      }
    }
  }
}
