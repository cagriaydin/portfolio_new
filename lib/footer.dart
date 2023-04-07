import 'package:flutter/material.dart';
import 'package:portfolio_new/header.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import 'colors.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        GestureDetector(
          onTap: () => launchUrl(
            Uri.parse("mailto:cagriaydin.dev@gmail.com"),
          ),
          child: VxDevice(
            mobile: VStack(
              [
                "Got a project?\nLet's talk.".text.center.white.xl2.make(),
                10.heightBox,
                "cagriaydin.dev@gmail.com"
                    .text
                    .color(Coolors.accentColor)
                    .semiBold
                    .make()
                    .box
                    .border(color: Coolors.accentColor)
                    .p16
                    .rounded
                    .make()
              ],
              crossAlignment: CrossAxisAlignment.center,
            ),
            web: HStack(
              [
                "Got a project?\nLet's talk.".text.center.white.xl2.make(),
                10.widthBox,
                "cagriaydin.dev@gmail.com"
                    .text
                    .color(Coolors.accentColor)
                    .semiBold
                    .make()
                    .box
                    .border(color: Coolors.accentColor)
                    .p16
                    .rounded
                    .make(),
              ],
              alignment: MainAxisAlignment.spaceAround,
            ).w(context.safePercentWidth * 70).scale150().p16(),
          ),
        ),
        50.heightBox,
        const CustomAppBar(),
        10.heightBox,
        // "Thanks for scrolling, ".richText.semiBold.white.withTextSpanChildren(
        //     ["that's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox,
        if (context.isMobile) const SocialAccounts(),
        if (context.isMobile) 20.heightBox,
        [
          "Made with Flutter".text.gray500.make(),
          10.widthBox,
          const Icon(
            // AntDesign.heart,
            Icons.textsms_sharp,
            color: Vx.blue500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
