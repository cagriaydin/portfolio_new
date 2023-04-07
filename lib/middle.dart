import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            "All Creative works,\n"
                .richText
                .withTextSpanChildren(
                    ["Selected projects.".textSpan.yellow400.make()])
                .xl4
                .white
                .make(),
            20.widthBox,
            Expanded(
                child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              items: [
                GestureDetector(
                  onTap: () => launchUrl(
                    Uri.parse("https://saytv.net"),
                  ),
                  child: const ProjectWidget(title: "SAYTV"),
                ),
                GestureDetector(
                  onTap: () => launchUrl(
                    Uri.parse("https://github.com/cagriaydin/notify_me"),
                  ),
                  child: const ProjectWidget(title: "Notify Me"),
                ),
                GestureDetector(
                  onTap: () => launchUrl(
                    Uri.parse("https://github.com/cagriaydin/gamification"),
                  ),
                  child: const ProjectWidget(title: "Gamification"),
                ),
                GestureDetector(
                  onTap: () => launchUrl(
                    Uri.parse("https://github.com/cagriaydin/pinemoji"),
                  ),
                  child: const ProjectWidget(title: "Pinemoji"),
                ),
                GestureDetector(
                  onTap: () => launchUrl(
                    Uri.parse("https://github.com/cagriaydin/ne_yesek"),
                  ),
                  child: const ProjectWidget(title: "Ne Yesek"),
                ),
                GestureDetector(
                  onTap: () => launchUrl(
                    Uri.parse("https://github.com/cagriaydin/search_engine"),
                  ),
                  child: const ProjectWidget(title: "Search Engine"),
                ),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayInterval: const Duration(
                seconds: 3,
              ),
              autoPlayAnimationDuration: 1.seconds,
            ))
          ]).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}
