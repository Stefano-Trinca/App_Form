import 'package:formz/formz.dart';

import 'statestatus.dart';

abstract class FormStatus {
  final FormzStatus formStatus;
  final StateStatus stateStatus;

  const FormStatus(
      {this.formStatus = FormzStatus.pure,
      this.stateStatus = StateStatus.none});
}
