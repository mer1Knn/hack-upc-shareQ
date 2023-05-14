import 'package:flutter/material.dart';
import 'package:ShareQ/components/form_error.dart';
import 'package:ShareQ/screens/interest/interest_screen.dart';

import '../../../components/secondary_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class LoactionForm extends StatefulWidget {
  @override
  _LoactionFormState createState() => _LoactionFormState();
}

class _LoactionFormState extends State<LoactionForm> {
  final _formKey = GlobalKey<FormState>();
  String? location;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          Secondary_button(
            text: "Next",
            press: () {
              Navigator.pushNamed(context, InterestScreen.routeName);
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => location = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Location",
        hintText: "Enter your Location",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
