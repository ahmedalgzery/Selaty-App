import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:selaty/core/utils/styles.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      style: Styles.textStyle18,
      dropdownTextStyle: Styles.textStyle16,
      pickerDialogStyle: PickerDialogStyle(
          countryCodeStyle: Styles.textStyle16,
          countryNameStyle: Styles.textStyle16),
      decoration: const InputDecoration(
        labelText: 'رقم الهاتف',
        border: OutlineInputBorder(
          borderSide: BorderSide(),
        ),
      ),
      initialCountryCode: 'EG',
      onChanged: (phone) {
        if (kDebugMode) {
          print(phone.completeNumber);
        }
      },
    );
  }
}
