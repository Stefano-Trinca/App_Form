import 'package:flutter/widgets.dart';

import '../../appform.dart';
import 'appformfield_base.dart';

class AppFormField<T> extends AppFormFieldBase<T, AppFormField<T>> {
  AppFormField.init({
    List<FormValidator<T>>? validators,
    T? value,
    TextEditingController? controller,
    String Function(T? value)? asString,
  }) : super.init(validators: validators, value: value, controller: controller, asString: asString);

  AppFormField.dirty({
    List<FormValidator<T>>? validators,
    T? value,
    TextEditingController? controller,
    String Function(T? value)? asString,
  }) : super.dirty(
            validators: validators, value: value, controller: controller, asString: asString);

  @override
  AppFormField<T> update([T? value]) => AppFormField<T>.dirty(
      value: value,
      validators: this.validators,
      controller: this.controller,
      asString: this.asString);

  @override
  AppFormField<T> dirty([T? value]) => AppFormField<T>.dirty(
      value: value ?? this.value,
      validators: this.validators,
      controller: this.controller,
      asString: this.asString);

  @override
  AppFormField<T> clear() =>
      AppFormField<T>.init(validators: this.validators, asString: this.asString);
}
