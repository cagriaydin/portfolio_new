import 'package:flutter/material.dart';
import 'package:portfolio_new/footer.dart';
import 'package:portfolio_new/middle.dart';
import 'package:velocity_x/velocity_x.dart';

import 'header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: VStack([
        const HeaderScreen(),
        if (context.isMobile) const IntroductionWidget().p16(),
        const MiddleScreen(),
        const FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
