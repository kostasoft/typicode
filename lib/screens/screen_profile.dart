import 'package:flutter/material.dart';

import 'package:email_validator/email_validator.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '../generated/l10n.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({Key? key}) : super(key: key);

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.profile),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(label: Text(S.current.name)),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  const minLength = 6;
                  if ((value?.length ?? 0) < minLength) {
                    return S.current.more_x_symbols(minLength);
                  }
                  return null;
                },
                onFieldSubmitted: (_) => _formKey.currentState!.validate(),
              ),
              TextFormField(
                decoration: InputDecoration(label: Text(S.current.email)),
                textInputAction: TextInputAction.next,
                validator: (email) {
                  if (email == null || !EmailValidator.validate(email)) {
                    return S.current.wrong_email;
                  }
                  return null;
                },
                onFieldSubmitted: (_) => _formKey.currentState!.validate(),
              ),
              PhoneFormField(
                decoration: InputDecoration(label: Text(S.current.phone)),
                textInputAction: TextInputAction.send,
                validator: PhoneValidator.compose([
                  PhoneValidator.required(errorText: S.current.enter_phone_number),
                  PhoneValidator.validMobile(),
                ]),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(S.current.saving_data)),
                    );
                  }
                },
                child: Text(S.current.submit),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
