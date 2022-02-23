import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class certification_and_education_title extends StatelessWidget {
  const certification_and_education_title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 50,
      child: Row(

        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 40),
            width: 8,
            height: 50,
            color: Colors.black,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFF0D40E7),
              ),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: FractionallySizedBox(
                    widthFactor: 0.4,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText(
                          "Life Section",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 50),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}