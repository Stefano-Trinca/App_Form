import 'package:flutter/widgets.dart';

import '../../appform.dart';
import 'appformfield_base.dart';

class AppFormFieldString extends AppFormFieldBase<String, AppFormFieldString> {
  AppFormFieldString.init({
    List<FormValidator<String>>? validators,
    String? value,
    TextEditingController? controller,
    String Function(String? value)? asString,
  }) : super.init(validators: validators, value: value, controller: controller, asString: asString);

  AppFormFieldString.dirty({
    List<FormValidator<String>>? validators,
    String? value,
    TextEditingController? controller,
    String Function(String? value)? asString,
  }) : super.dirty(
            validators: validators, value: value, controller: controller, asString: asString);

  @override
  AppFormFieldString update([String? value]) => AppFormFieldString.dirty(
        value: value,
        validators: this.validators,
        controller: this.controller,
        asString: this.asString,
      );

  @override
  AppFormFieldString dirty([String? value]) => AppFormFieldString.dirty(
        value: value ?? this.value,
        validators: this.validators,
        controller: this.controller,
        asString: this.asString,
      );

  @override
  AppFormFieldString clear() =>
      AppFormFieldString.init(validators: this.validators, asString: this.asString);
}
