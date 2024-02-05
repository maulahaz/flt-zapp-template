import 'package:flutter/material.dart';

import '../../widgets/x_widgets.dart';

class FormInputPage extends StatefulWidget {
  const FormInputPage({super.key});

  @override
  State<FormInputPage> createState() => _FormInputPageState();
}

class _FormInputPageState extends State<FormInputPage> {
  final txtName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Text('Test'),
          FormInput.text( context,txtName, 'Name',null),
        ],),
      ),
    );
  }
}