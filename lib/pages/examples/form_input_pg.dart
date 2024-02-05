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
      appBar: AppBar(
        title: Text('Example: Form Input'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Text('Form input Text'),
          FormInput.text( context,txtName, 'Name',null),
          SizedBox(height: 5),
          FormInput.text( context,txtName, 'Email',null),
          SizedBox(height: 5),
          FormInput.password( context,txtName, 'Password',null),
          SizedBox(height: 5),
        ],),
      ),
    );
  }
}