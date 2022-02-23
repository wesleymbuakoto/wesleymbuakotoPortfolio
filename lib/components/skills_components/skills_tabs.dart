import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'skills_data.dart';
import 'package:flutter_svg/flutter_svg.dart';





class skills_tabs extends StatelessWidget {
  skills_tabs({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                constraints: const BoxConstraints(maxWidth: 1110),
                height: 50,
                child: Row(

                  children: [
                    Container(
                      //margin: EdgeInsets.symmetric(right: kDefaultPadding),
                      padding: EdgeInsets.only(bottom: 40),
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
                                    "Industry Skills",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
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
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.fromLTRB(0,0,0,0),
              itemCount: major_skills.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Align(
                    alignment: Alignment.center,
                    child: Card(
                        elevation: 15,
                        shadowColor: const Color(0xFF3ae1ff),
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
                        margin: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            AlertDialog alert = AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              title: SelectableText(major_skills[index].skill,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30
                              ),
                              ),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.center,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Container(
                                          margin: const EdgeInsets.all(5),
                                          constraints: const BoxConstraints(
                                            maxHeight: 400.0,
                                            maxWidth: 400.0,
                                          ),
                                          child: SvgPicture.asset(
                                            major_skills[index].svg,
                                            semanticsLabel:major_skills[index].svgSemantic,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SelectableText(major_skills[index].details,
                                      style: TextStyle(
                                           color: Colors.black, fontSize: 20
                                      ),),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Done'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alert;
                              },
                            );
                          },
                          splashColor: const Color(0xFFf7fbff),
                          hoverColor: Colors.blue[100],
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Container(
                                    height:50,
                                    width: 150,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: AutoSizeText(major_skills[index].skill,
                                        maxLines: 2,
                                        minFontSize: 8,
                                        wrapWords: false,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 22,
                                        ),),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )));
              },
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                constraints: const BoxConstraints(maxWidth: 1110),
                height: 50,
                child: Row(

                  children: [
                    Container(
                      //margin: EdgeInsets.symmetric(right: kDefaultPadding),
                      padding: EdgeInsets.only(bottom: 40),
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
                                    "Languages and Frameworks",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
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
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.fromLTRB(0,0,0,0),
              itemCount: languages_frameworks.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Align(
                  alignment: Alignment.center,
                    child: Card(
                        elevation: 5,
                        shadowColor: const Color(0xFF3ae1ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0,20.0,20.0,20.0),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                child: VerticalDivider(
                                  color: Color(0xFF3ae1ff),
                                  width: 20,
                                  thickness: 3,
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  height:50,
                                  width: 150,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: AutoSizeText(languages_frameworks[index],
                                      wrapWords: false,
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 22,
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )));
              },
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                constraints: const BoxConstraints(maxWidth: 1110),
                height: 50,
                child: Row(

                  children: [
                    Container(
                      //margin: EdgeInsets.symmetric(right: kDefaultPadding),
                      padding: EdgeInsets.only(bottom: 40),
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
                                    "Tools and Technology",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
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
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.fromLTRB(0,0,0,0),
              itemCount: tool_technology.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Align(
                    alignment: Alignment.center,
                    child: Card(
                        elevation: 5,
                        shadowColor: const Color(0xFF3ae1ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0,20.0,20.0,20.0),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                child: VerticalDivider(
                                  color: Color(0xFF3ae1ff),
                                  width: 20,
                                  thickness: 3,
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  height:50,
                                  width: 150,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: AutoSizeText(tool_technology[index],
                                      wrapWords: false,
                                      style: TextStyle(
                                        //fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 22,
                                      ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )));
              },
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                constraints: const BoxConstraints(maxWidth: 1110),
                height: 50,
                child: Row(

                  children: [
                    Container(
                      //margin: EdgeInsets.symmetric(right: kDefaultPadding),
                      padding: EdgeInsets.only(bottom: 40),
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
                                    "Industry Knowledge",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
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
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.fromLTRB(0,0,0,0),
              itemCount: industry_knowledge.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Align(
                    alignment: Alignment.center,
                    child: Card(
                        elevation: 5,
                        shadowColor: const Color(0xFF3ae1ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0,20.0,20.0,20.0),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                child: VerticalDivider(
                                  color: Color(0xFF3ae1ff),
                                  width: 20,
                                  thickness: 3,
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  height:50,
                                  width: 150,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: AutoSizeText(industry_knowledge[index],
                                      wrapWords: false,
                                      style: TextStyle(
                                        //fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 22,
                                      ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )));
              },
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                constraints: const BoxConstraints(maxWidth: 1110),
                height: 50,
                child: Row(

                  children: [
                    Container(
                      //margin: EdgeInsets.symmetric(right: kDefaultPadding),
                      padding: EdgeInsets.only(bottom: 40),
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
                                    "Interpersonal",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
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
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.fromLTRB(0,0,0,0),
              itemCount: interpersonal.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Align(
                    alignment: Alignment.center,
                    child: Card(
                        elevation: 5,
                        shadowColor: const Color(0xFF3ae1ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0,20.0,20.0,20.0),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                child: VerticalDivider(
                                  color: Color(0xFF3ae1ff),
                                  width: 20,
                                  thickness: 3,
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  height:50,
                                  width: 150,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: AutoSizeText(interpersonal[index],
                                      semanticsLabel: 'Interpersonal Skill',
                                      wrapWords: false,
                                      style: TextStyle(
                                        //fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 22,
                                      ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )));
              },
            ),
          ),


        ],
      );
  }
}
