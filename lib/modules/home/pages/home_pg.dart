import 'package:flutter/material.dart';
import 'package:flutter_app/helpers/x_helpers.dart';

import 'package:flutter_app/widgets/x_widgets.dart';
import '../../features/x_features.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(height: 5),
              MyButtons.primary(context, 'Buttons', () => context.push(ButtonPage())),
              SizedBox(height: 5),
              MyButtons.primary(context, 'Form Inputs', () => context.push(FormInputPage())),
            ],
          ),
        ),
      ),
    );
  }
}
