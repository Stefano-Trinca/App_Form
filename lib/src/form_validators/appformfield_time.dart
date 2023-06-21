import 'package:flutter/material.dart';

import '../../appform.dart';
import 'appformfield_base.dart';

///App form Field for datetime
class AppFormFieldTime extends AppFormFieldBase<TimeOfDay, AppFormFieldTime> {
  AppFormFieldTime.init({
    List<FormValidator<TimeOfDay>>? validators,
    TimeOfDay? value,
    TextEditingController? controller,
  }) : super.init(
          validators: validators,
          value: value,
          controller: controller,
          asString: (time) => time?.asString() ?? '',
        );

  AppFormFieldTime.dirty({
    List<FormValidator<TimeOfDay>>? validators,
    TimeOfDay? value,
    TextEditingController? controller,
  }) : super.dirty(
          validators: validators,
          value: value,
          controller: controller,
          asString: (time) => time?.asString() ?? '',
        );

  @override
  AppFormFieldTime update([TimeOfDay? value]) => AppFormFieldTime.dirty(
        value: value,
        validators: this.validators,
        controller: this.controller,
      );

  @override
  AppFormFieldTime dirty([TimeOfDay? value]) => AppFormFieldTime.dirty(
        value: value ?? this.value,
        validators: this.validators,
        controller: this.controller,
      );

  @override
  AppFormFieldTime clear() => AppFormFieldTime.init(validators: this.validators);
}

extension on TimeOfDay {
  String asString() => '${hour.stringDouble}:${minute.stringDouble}';
}

extension on int {
  String get stringDouble => this > 9 ? '$this' : '0$this';
}
