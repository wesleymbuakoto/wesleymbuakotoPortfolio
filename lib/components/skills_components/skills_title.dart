import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:web_portfolio/constants.dart';


class skills_title extends StatelessWidget {
  const skills_title ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          //constraints: BoxConstraints(maxWidth: 500),
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 400,
                  width: 400,
                  child: const Align(
                    alignment: Alignment.center,
                    child: const AutoSizeText(
                      "Skills",
                      style:
                      const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 80),
                      maxLines: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height:10),
              Flexible(
                child: Container(
                  //margin: EdgeInsets.only(right: kDefaultPadding),
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  height: 8,
                  width: 150,
                  color: Colors.purple,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}