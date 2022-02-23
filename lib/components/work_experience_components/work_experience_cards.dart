import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/components/work_experience_components/work_experience_cards/work_data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class work_experience_cards extends StatelessWidget {
  const work_experience_cards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          return FractionallySizedBox(
            widthFactor: .6,
            child: Card(
              elevation: 65,
              shadowColor: const Color(0xFF3ae1ff),
              margin: EdgeInsets.symmetric(vertical: 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                  jobs[index].title,
                                  wrapWords: false,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 40),
                                  maxLines: 4,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                  jobs[index].location,
                                  maxLines: 2,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w200,
                                      color: kTextColor,
                                      fontSize: 18),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                  jobs[index].dateRange,
                                  maxLines: 2,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w200,
                                      color: kTextColor,
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                              margin: const EdgeInsets.all(10),
                              child: SelectableText(
                                  jobs[index].description,
                                  style: const TextStyle(fontSize: 20,
                                  overflow: TextOverflow.ellipsis,))),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              constraints: const BoxConstraints(
                                maxHeight: 150.0,
                                maxWidth: 200.0,
                              ),
                              child: SvgPicture.asset(
                                jobs[index].svg,
                                semanticsLabel:jobs[index].svgSemantic,
                              ),
                            ),
                          ),
                        ),
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
