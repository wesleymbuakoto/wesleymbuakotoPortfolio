import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../constants.dart';


class webdev_access_card extends StatelessWidget {
  const webdev_access_card({Key? key}) : super(key: key);

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
                      child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/637409544884694985.jpg',
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
                          "Accessibility for Web Developers\nBy SiteImprove",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
                          maxLines: 4,
                        ),

                      AutoSizeText(
                        'Jul 2020 - Aug 2020',
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
                        'Course for Web development teams to master the areas that apply to them like HTML structure, keyboard navigation, color use, and more.\n- Accessibility Fundamentals for the Web\n- Accessibility with WCAG 2.1\n- Accessibility for Web Developers - Part 1\n- Accessibility for Web Developers - Part 2\n- Accessibility for iOS Apps\n- Accessibility for PDFs\n- Accessibility Testing for the Web \n- SEO & Accessibility',
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

  void _mainpicture(BuildContext context) {
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
                child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/637409544884694985.jpg',
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

  void _firstpicture(BuildContext context) {
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
                child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/637409544977314418.jpg'),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void _secondpicture(BuildContext context) {
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
                child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/637409544930872939.jpg'),
              ),
            ],
          ),
        ),
      ),
    ));
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
                child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/637409544910164627.jpg'),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void _fourthpicture(BuildContext context) {
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
                child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/637409544901570572.jpg'),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void _fithpicture(BuildContext context) {
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
                child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/637409544919071184.jpg'),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void _sixthpicture(BuildContext context) {
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
                child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/637409544892976541.jpg'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
