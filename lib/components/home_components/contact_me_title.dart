// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class contact_me_title extends StatelessWidget {
  const contact_me_title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const AutoSizeText(
                "Wesley Mbuakoto",
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFf7fbff), fontSize: 20),
                maxLines: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}