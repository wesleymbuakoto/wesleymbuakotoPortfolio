import 'package:flutter/material.dart';
import 'contact_me_title.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:core';


class contact_section extends StatelessWidget {
   contact_section({Key? key}) : super(key: key);

  final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'wesleymbuakoto@gmail.com',
      queryParameters: {
        'subject': 'Hello Wesley'
      }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF000000),

      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: const contact_me_title()),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Card(
                          color: const Color(0xFF000000),
                          shape: RoundedRectangleBorder(
                            side: BorderSide.merge(
                                const BorderSide(
                                    width: 1,
                                    color: Color(0xFF3ae1ff),
                                    style: BorderStyle.solid),
                                const BorderSide(
                                    width: 1,
                                    color: Color(0xFF3ae1ff),
                                    style: BorderStyle.solid)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          shadowColor: const Color(0xFF3ae1ff),
                          elevation: 10,
                          child: InkWell(
                            onTap: () => launch(_emailLaunchUri.toString()),
                            splashColor: const Color(0xFF092c9e),
                            hoverColor: const Color(0xFFf7fbff),
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: const Align(
                                alignment: Alignment.center,
                                child: Tooltip(
                                  message: 'Wesley email button',
                                  child: FaIcon(
                                    FontAwesomeIcons.envelope,
                                    color: Color(0xFF3ae1ff),
                                    semanticLabel: 'E mail logo',
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Flexible(
                        child: Card(
                          color: const Color(0xFF000000),
                          shape: RoundedRectangleBorder(
                            side: BorderSide.merge(
                                const BorderSide(
                                    width: 1,
                                    color: Color(0xFF3ae1ff),
                                    style: BorderStyle.solid),
                                const BorderSide(
                                    width: 1,
                                    color: Color(0xFF3ae1ff),
                                    style: BorderStyle.solid)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          shadowColor: const Color(0xFF3ae1ff),
                          elevation: 10,
                          child: InkWell(
                            onTap: () => launchURL('https://www.linkedin.com/in/wesley-mbuakoto-9068699a?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BxpsFcrDISfibj2udd2qHVQ%3D%3D'),
                            splashColor: const Color(0xFF092c9e),
                            hoverColor: const Color(0xFFf7fbff),
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: const Align(
                                alignment: Alignment.center,
                                child: Tooltip(
                                  message: 'Wesley Linked in page button',
                                  child: FaIcon(
                                    FontAwesomeIcons.linkedin,
                                    color: Color(0xFF3ae1ff),
                                    semanticLabel: 'Linked in Logo',
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Flexible(
                        child: Card(
                          color: const Color(0xFF000000),
                          shape: RoundedRectangleBorder(
                            side: BorderSide.merge(
                                const BorderSide(
                                    width: 1,
                                    color: Color(0xFF3ae1ff),
                                    style: BorderStyle.solid),
                                const BorderSide(
                                    width: 1,
                                    color: Color(0xFF3ae1ff),
                                    style: BorderStyle.solid)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          shadowColor: const Color(0xFF3ae1ff),
                          elevation: 10,
                          child: InkWell(
                            onTap: () => launchURL('https://wesleymb.com/'),
                            splashColor: const Color(0xFF092c9e),
                            hoverColor: const Color(0xFFffffff),
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: const Align(
                                alignment: Alignment.center,
                                child: Tooltip(
                                  message: 'Wesley website button',
                                  child: FaIcon(
                                    FontAwesomeIcons.globe,
                                    color: Color(0xFF3ae1ff),
                                    semanticLabel: 'Website logo',
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Flexible(
                        child: Card(
                          color: const Color(0xFF000000),
                          shape: RoundedRectangleBorder(
                            side: BorderSide.merge(
                                const BorderSide(
                                    width: 1,
                                    color: Color(0xFF3ae1ff),
                                    style: BorderStyle.solid),
                                const BorderSide(
                                    width: 1,
                                    color: Color(0xFF3ae1ff),
                                    style: BorderStyle.solid)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          shadowColor: const Color(0xFF3ae1ff),
                          elevation: 10,
                          child: InkWell(
                            onTap: () => launchURL('https://github.com/wesleymbuakoto'),
                            splashColor: const Color(0xFF092c9e),
                            hoverColor: const Color(0xFFffffff),
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: const Align(
                                alignment: Alignment.center,
                                child: Tooltip(
                                  message: 'Wesley Git hub page button',
                                  child: FaIcon(
                                    FontAwesomeIcons.gitAlt,
                                    color: Color(0xFF3ae1ff),
                                    semanticLabel: 'Git hub Logo',
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Stack(
                  children: const [
                    Divider(
                      height: 20,
                      thickness: 3,
                      indent: 600,
                      endIndent: 600,
                      color: Color(0xFF3ae1ff),
                    ),
                    Divider(
                      height: 20,
                      thickness: 3,
                      indent: 620,
                      endIndent: 620,
                      color: Color(0xFF666664),
                    )
                  ],
                ),
                const AutoSizeText(
                  'Copyright ©2022 Wesley Mbuakoto',
                  style:
                  TextStyle(fontWeight: FontWeight.w200, color: Color(0xFFf7fbff),
                  fontSize: 7),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

}
