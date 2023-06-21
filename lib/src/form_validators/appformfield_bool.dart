import 'package:flutter/widgets.dart';

import '../../appform.dart';
import 'appformfield_base.dart';

class AppFormFieldBool extends AppFormFieldBase<bool, AppFormFieldBool> {
  AppFormFieldBool.init({
    List<FormValidator<bool>>? validators,
    bool? value,
    TextEditingController? controller,
    String Function(bool? value)? asString,
  }) : super.init(validators: validators, value: value, controller: controller, asString: asString);

  AppFormFieldBool.dirty({
    List<FormValidator<bool>>? validators,
    bool? value,
    TextEditingController? controller,
    String Function(bool? value)? asString,
  }) : super.dirty(
            validators: validators, value: value, controller: controller, asString: asString);

  @override
  AppFormFieldBool update([bool? value]) => AppFormFieldBool.dirty(
      value: value,
      validators: this.validators,
      controller: this.controller,
      asString: this.asString);

  @override
  AppFormFieldBool dirty([bool? value]) => AppFormFieldBool.dirty(
      value: value ?? this.value,
      validators: this.validators,
      controller: this.controller,
      asString: this.asString);

  @override
  AppFormFieldBool clear() =>
      AppFormFieldBool.init(validators: this.validators, asString: this.asString);
}
