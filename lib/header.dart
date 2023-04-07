import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio_new/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameWidget = "Çağrı\nAydın."
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack(
          [
            const PictureWidget(),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  const CustomAppBar()
                      .shimmer(primaryColor: Coolors.accentColor),
                  30.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox()
                      .color(Coolors.accentColor)
                      .size(60, 10)
                      .make()
                      .px4()
                      .shimmer(primaryColor: Coolors.accentColor),
                  30.heightBox,
                  const SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentWidth * 10,
                  v: 32,
                ),
                Expanded(
                  child: VxResponsive(
                    medium: const IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    large: const IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    fallback: const Offstage(),
                  ),
                )
              ],
            ).w(context.screenWidth)
          ],
        )
      ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Coolors.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "A Full Stack Engineer who likes to help other developers problems and enjoys creating mobile and web applications especially with Flutter, C#, and .Net."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      // AntDesign.codesquareo,
      Icons.textsms_sharp,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      origin: Offset(context.percentWidth * 10, 0),
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/pic.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      const Icon(
        // AntDesign.linkedin_square,
        Icons.textsms_sharp,
        color: Colors.white,
      ).mdClick(() {
        launchUrl(Uri.parse("https://linkedin.com/in/cagriaydin"));
      }).make(),
      20.widthBox,
      const Icon(
        // AntDesign.github,
        Icons.textsms_sharp,
        color: Colors.white,
      ).mdClick(() {
        launchUrl(Uri.parse("https://github.com/cagriaydin"));
      }).make(),
      20.widthBox,
      const Icon(
        // AntDesign.medium_monogram,
        Icons.textsms_sharp,
        color: Colors.white,
      ).mdClick(() {
        launchUrl(Uri.parse("https://medium.com/@cagriaydin"));
      }).make(),
      20.widthBox,
      const Icon(
        // AntDesign.codesquare,
        Icons.textsms_sharp,
        color: Colors.white,
      ).mdClick(() {
        launchUrl(
            Uri.parse("https://stackoverflow.com/users/8428950/Çağrı-aydın"));
      }).make(),
      20.widthBox,
    ].hStack();
  }
}
