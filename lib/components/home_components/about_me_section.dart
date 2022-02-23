import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

class about_me_section extends StatelessWidget {
  const about_me_section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      AutoSizeText(
                        "About",
                        wrapWords: false,
                        style:
                            TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 60),
                      ),
                      AutoSizeText(
                        "Me:",
                        wrapWords: false,
                        style:
                        TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 60),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: 400,
                      margin: const EdgeInsets.all(5),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide.merge(
                              const BorderSide(
                                  width: 1.5,
                                  color: Color(0xFF85EDFF),
                                  style: BorderStyle.solid),
                              const BorderSide(
                                  width: 1.5,
                                  color: Color(0xFF85EDFF),
                                  style: BorderStyle.solid)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: const SizedBox(
                            height: 200.0,
                            width: 400,
                            child: Align(
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                  'My name is Wesley Mbuakoto, a multi platform developer and google cloud engineer. As well as more skills that one can see through out this muilti-platform website. A place to show some the industry knowledge and skills I have cultivated as a computer scientist. Feel free to reach out via linkedin and email, located at the bottom of every page.',
                                style: TextStyle(fontSize: 30),
                                minFontSize: 8,

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Align(
            alignment: Alignment.center,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Container(
                margin: const EdgeInsets.all(5),
                constraints: const BoxConstraints(
                  maxHeight: 1000.0,
                  maxWidth: 800.0,
                ),
                child: SvgPicture.asset(
                  "assets/images/undraw_detailed_information_re_qmuc.svg",
                  ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
