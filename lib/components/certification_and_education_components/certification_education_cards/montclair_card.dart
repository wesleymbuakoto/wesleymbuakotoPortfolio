import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../constants.dart';


class montclair_card extends StatelessWidget {
  const montclair_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                Flexible(
                  child: GestureDetector(
                    onTap: () => _thirdpicture(context),
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/images/montclair.jpg',
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      AutoSizeText(
                          "Computer Science Bachelors\nMontclair State University",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
                          maxLines: 4,
                        ),

                      AutoSizeText(
                        'Sep 2014 - Jun 2019',
                        style:
                        TextStyle(fontWeight: FontWeight.w200, color: kTextColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                    margin: const EdgeInsets.all(10),
                    child: const SelectableText(
                        'Graduated Montclair State University in 2019, with a bachelors in Computer Science',
                        style:
                        TextStyle(fontSize: 16)
                    )
                ),
              )
            ],
          ),
        ],
      ),
    );
  }



  void _thirdpicture(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(''),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/images/montclair.jpg',
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }


}
