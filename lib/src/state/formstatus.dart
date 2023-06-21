import 'package:app_bloc_state/app_bloc_state.dart';
import 'package:formz/formz.dart';

abstract class FormStatus {
  final FormzStatus formStatus;
  final StateStatus stateStatus;

  const FormStatus(
      {this.formStatus = FormzStatus.pure,
      this.stateStatus = StateStatus.none});
}
