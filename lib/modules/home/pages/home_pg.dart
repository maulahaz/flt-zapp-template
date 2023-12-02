import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/x_widgets.dart';
// import 'package:flutter_app/configs/x_configs.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: kTransparent,
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text('Tombol Biasa type Filled'),
            MyButtons.filled(
              onPressed: () => print('MyButtons.filled: Pressed'),
              label: 'MyButtons.filled',
            ),
            SizedBox(height: 5),
            Text('Tombol Biasa type outlined'),
            MyButtons.outlined(
              onPressed: () => print('MyButtons.outlined: Pressed'),
              label: 'MyButtons.outlined',
            ),
            SizedBox(height: 5),
            Text('Tombol XX type outlined'),
            MyButtonsXX.outlined(context,
                label: 'Tombol XX type outlined',
                function: () => print(
                      'MyButtons xx.outlined: Pressed',
                    ))
          ],
        ),
      ),
    );
  }
}
