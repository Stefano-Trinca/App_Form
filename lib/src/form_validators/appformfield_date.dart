import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import '../../appform.dart';
import 'appformfield_base.dart';

/// default date format for a date field
final DateFormat _dateFormat = DateFormat('dd/MM/YYYY');

///App form Field for datetime
class AppFormFieldDate extends AppFormFieldBase<DateTime, AppFormFieldDate> {
  late final DateFormat? dateFormat;

  AppFormFieldDate.init({
    List<FormValidator<DateTime>>? validators,
    DateTime? value,
    TextEditingController? controller,
    this.dateFormat,
  }) : super.init(
          validators: validators,
          value: value,
          controller: controller,
          asString: (date) =>
              date == null ? '' : (dateFormat?.format(date) ?? _dateFormat.format(date)),
        );

  AppFormFieldDate.dirty({
    List<FormValidator<DateTime>>? validators,
    DateTime? value,
    TextEditingController? controller,
    this.dateFormat,
  }) : super.dirty(
            validators: validators,
            value: value,
            controller: controller,
            asString: (date) =>
                date == null ? '' : (dateFormat?.format(date) ?? _dateFormat.format(date)));

  @override
  AppFormFieldDate update([DateTime? value]) => AppFormFieldDate.dirty(
      value: value,
      validators: this.validators,
      controller: this.controller,
      dateFormat: this.dateFormat);

  @override
  AppFormFieldDate dirty([DateTime? value]) => AppFormFieldDate.dirty(
      value: value ?? this.value,
      validators: this.validators,
      controller: this.controller,
      dateFormat: this.dateFormat);

  @override
  AppFormFieldDate clear() =>
      AppFormFieldDate.init(validators: this.validators, dateFormat: this.dateFormat);
}
