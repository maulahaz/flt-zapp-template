import 'package:flutter/material.dart';

// import '../../configs/x_configs.dart';
import '../../widgets/x_widgets.dart';

class ModulesView extends StatelessWidget {
  const ModulesView({super.key});

  @override
  Widget build(BuildContext context) {
    var _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: kTransparent,
        // elevation: 0,
        title: Text('My Apps'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Text me', style: _textTheme.titleSmall),
            MyButtons.defaultBtn(context,'Test',100,(){}),
          ],
        ),
      ),
    );
  }
}