import 'package:flutter/material.dart';

class FormInputPage extends StatelessWidget {
  const FormInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Input Page'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Text('Form Input')
        ],),
      ));
  }
}