import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'life_section_title.dart';


class life_section extends StatelessWidget {
   life_section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/bg_img_2.png"),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 25,
                        ),
                          child: const certification_and_education_title())),


                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: Container(
                              width: 1500,
                              alignment: Alignment.center,
                              child: GridView.builder(
                                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 300.0,
                                  crossAxisSpacing: 20.0,
                                  mainAxisSpacing: 20.0,
                                  childAspectRatio: 1/1,
                                ),
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: sections.length,
                                padding: EdgeInsets.fromLTRB(0,0,0,0),
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index){
                                  return SizedBox(
                                    width:300,
                                    height: 300,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide.merge(
                                            const BorderSide(
                                                width: 1.5,
                                                color: Color(0xFF3ae1ff),
                                                style: BorderStyle.solid),
                                            const BorderSide(
                                                width: 1.5,
                                                color: Color(0xFF3ae1ff),
                                                style: BorderStyle.solid)),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      elevation:  10,
                                      color: const Color(0xFF70EAFF),
                                      shadowColor: const Color(0xFF092c9e),
                                      margin: const EdgeInsets.all(10),
                                      child: InkWell(
                                        onTap: () => context.go(sections[index].page),
                                        splashColor: const Color(0xFF092c9e),
                                        hoverColor: Colors.blue[100],
                                        borderRadius: BorderRadius.circular(20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(10, 8, 10, 2),
                                              child:  FittedBox(
                                                fit: BoxFit.cover,
                                                child: AutoSizeText(
                                                  sections[index].title,
                                                  style: TextStyle(
                                                      color: Colors.white, fontSize: 30),
                                                ),
                                              ),
                                            ),

                                            Flexible(
                                              child: FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Container(
                                                    margin: const EdgeInsets.all(5),
                                                    constraints: const BoxConstraints(
                                                      maxHeight: 300.0,
                                                      maxWidth: 300.0,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      sections[index].svg,
                                                    semanticsLabel: sections[index].svgSemantic,),
                                                  )
                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}

class SectionData {
  const SectionData({
    required this.title,
    required this.svg,
    required this.svgSemantic,
    required this.page,
  });

  final String title;
  final String svg;
  final String svgSemantic;
  final String page;
}

const sections = [
  SectionData(
    title: 'Projects',
    svg:'assets/images/undraw_maker_launch_re_rq81.svg',
    svgSemantic:'Flutter animated image',
    page: '/projects',
  ),
  SectionData(
    title: 'Work Experience',
    svg:'assets/images/undraw_online_cv_re_gn0a.svg',
    svgSemantic:'Flutter animated image',
    page: '/work-experience',
  ),
  SectionData(
    title: 'Education &\nCertification',
    svg:'assets/images/undraw_certificate_re_yadi.svg',
    svgSemantic:'Flutter animated image',
    page: '/certifications-and-education',
  ),
  SectionData(
    title: 'Skills',
    svg:'assets/images/undraw_ideas_re_7twj.svg',
    svgSemantic:'Flutter animated image',
    page: '/skills',
  ),
  SectionData(
    title: 'Hobbies',
    svg:'assets/images/undraw_a_moment_to_relax_bbpa.svg',
    svgSemantic:'Flutter animated image',
    page: '/hobbies',
  ),
];