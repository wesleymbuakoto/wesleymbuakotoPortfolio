import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:web_portfolio/constants.dart';


class work_experience_title extends StatelessWidget {
  const work_experience_title ({Key? key}) : super(key: key);

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
              const AutoSizeText(
                "Flutter is cool",
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 40),
                maxLines: 1,
              ),
              const SizedBox(height:10),
              Container(
                //margin: EdgeInsets.only(right: kDefaultPadding),
                padding: const EdgeInsets.symmetric(horizontal: 40),
                height: 8,
                width: 300,
                color: Colors.purple,
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black,
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