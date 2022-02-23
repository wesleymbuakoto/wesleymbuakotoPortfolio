import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';


class google_cloud_card extends StatelessWidget {
  const google_cloud_card({Key? key}) : super(key: key);

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
                          child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/googlecloudcert.JPG',
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
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      AutoSizeText(
                          "Associate Cloud Engineer\nCertified By Google",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
                          maxLines: 4,
                        ),

                      AutoSizeText(
                        'Oct 2021 - Nov 2021',
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
                        "An Associate Cloud Engineer deploys and secures applications and infrastructure, monitors operations of multiple projects, and maintains enterprise solutions to ensure that they meet target performance metrics. This individual has experience working with public clouds and on-premises solutions. They are able to use Google Cloud Console and the command-line interface to perform common platform-based tasks to maintain and scale one or more deployed solutions that leverage Google-managed or self-managed services on Google Cloud.\n- Setting up cloud projects and accounts\n- Managing billing configuration\n- Installing and configuring the command line interface (CLI), specifically the Cloud SDK\n- Planning and configuring compute resources, data storage options, network resources, and estimating Google Cloud product use using the Pricing Calculator\n- Deploying and implementing Compute Engine, Google Kubernetes Engine, Cloud Run, Cloud Functions, networking resources\n- Deploying and implementing data solutions\n- Deploying a solution using Cloud Marketplace\n- Managing Compute Engine, Google Kubernetes Engine, Cloud Run, storage and database solutions, networking resources\n- Managing Identity and Access Management (IAM), and  service accounts",
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
                    onPressed: () => launchURL('https://cloud.google.com/certification/guides/cloud-engineer/'),
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
          title: const Text(''),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Image.network('https://storage.googleapis.com/wesley_web_assets/assets/certificates/googlecloudcert.JPG',
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



