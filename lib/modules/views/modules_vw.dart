import 'package:flutter/material.dart';

import '../../configs/x_configs.dart';

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
            SliverPadding(
              padding: EdgeInsets.all(kDefaultPadding),
              sliver: SliverToBoxAdapter(child: Center(child: Text('ppp'),),),
            ),
          ],
        ),
      ),
    );
  }
}