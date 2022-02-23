import 'package:flutter/material.dart';
import 'package:web_portfolio/components/navigation_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:web_portfolio/components/work_experience_components/work_experience_title.dart';
import 'package:web_portfolio/components/work_experience_components/work_experience_cards.dart';
import 'package:web_portfolio/components/home_components/contact_section.dart';
import 'package:web_portfolio/components/parallax_top_general.dart';



class Work_Experience_page extends StatelessWidget {
  const Work_Experience_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFf5edf0),
      drawer: const navigation_drawer(),
      // Use Sliver App  bar????
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: IconButton(
          icon: const Icon(Icons.home),
          iconSize: 30,
          color: Colors.black,
          onPressed: () => context.go('/'),
          tooltip: 'Home Page',
        ),
      ),
      body:
      SingleChildScrollView(// Put a SingleChildScrollView widget around this in case there is still a stutter scroll issue
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              parallax_top_general(title_general: "Work Experience"),
              work_experience_cards(),
              contact_section(),

            ],
          ),
        ),
      ),
    );
  }
}
