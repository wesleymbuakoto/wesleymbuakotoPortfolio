import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';


class data_science_card extends StatelessWidget {
  const data_science_card({Key? key}) : super(key: key);

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
                    onTap: () => _mainpicture(context),
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Tooltip(
                          message: 'CLICK ME',
                          child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/UC-e4bcbe52-14c4-4010-a89d-429d96bdb3d5.jpg',
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
                          ),),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      AutoSizeText(
                          "Data Science Course\nComplete Data Science Bootcamp",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
                          maxLines: 4,
                        ),

                      AutoSizeText(
                        'Jan 2020 - Nov 2020',
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
                        "- Understanding of the data science field and the type of analysis carried out \n- Mathematics\n- Statistics\n- Python\n- Applying advanced statistical techniques in Python\n- Data Visualization\n- Machine Learning\n- Deep Learning",
                        style:
                        TextStyle(fontSize: 16)
                    )
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () => _mainpicture(context),
                    child: const Text('Open Certification')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () => launchURL('https://www.udemy.com/course/the-data-science-course-complete-data-science-bootcamp/'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        AutoSizeText('See More',
                        ),
                        AutoSizeText('Information',
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }


  void _mainpicture(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('3'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/UC-e4bcbe52-14c4-4010-a89d-429d96bdb3d5.jpg',
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

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

}



