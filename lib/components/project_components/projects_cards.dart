import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/components/project_components/project_cards/project_data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class project_card extends StatelessWidget {
  const project_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return FractionallySizedBox(
            widthFactor: .9,
            child: Card(
              elevation: 65,
              margin: const EdgeInsets.all(50),
              shadowColor: const Color(0xFF3ae1ff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              AutoSizeText(
                                projects[index].title,
                                wrapWords: false,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 40),
                                maxLines: 4,
                              ),
                              AutoSizeText(
                                projects[index].dateRange,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w200,
                                    color: kTextColor,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                constraints: const BoxConstraints(
                                  maxHeight: 400.0,
                                  maxWidth: 600.0,
                                ),
                                child: SvgPicture.asset(
                                  projects[index].svg,
                                    semanticsLabel:projects[index].svgSemantic,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Image.network(
                              projects[index].firstImage,
                              height: 400,
                              width: 400,
                              semanticLabel: projects[index].firstImageSemantic,
                            ),
                          ),
                        ),
                        const SizedBox(width: 2),
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Image.network(
                              projects[index].secondImage,
                              height: 400,
                              width: 400,
                              semanticLabel: projects[index].secondImageSemantic,
                            ),
                          ),
                        ),
                        const SizedBox(width: 2),
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Image.network(
                              projects[index].thirdImage,
                              height: 400,
                              width: 400,
                              semanticLabel: projects[index].thirdImageSemantic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Container(
                              margin: const EdgeInsets.all(10),
                              child: SelectableText(
                                  projects[index].description,
                                  style: const TextStyle(fontSize: 18))),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ))),
                            onPressed: () => launchURL(
                                projects[index].buttonLink),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  projects[index].buttonText,
                                  style: const TextStyle(
                                      fontSize:18),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
}
