import 'package:flutter/material.dart';
import 'package:web_portfolio/components/home_components/contact_section.dart';
import 'package:web_portfolio/components/navigation_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:web_portfolio/components/home_components/about_me_section.dart';
import 'package:web_portfolio/components/home_components/life_section/life_section.dart';
import 'package:web_portfolio/components/home_components/parallax_top_home.dart';



class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFf7fbff),
      drawer: const navigation_drawer(),
      // Use Sliver App  bar????
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 40,//change your color here
        ),
        title: IconButton(
          icon: const Icon(Icons.home),
          iconSize: 40,
          color: Colors.black,
          onPressed: () => context.go('/'),
          tooltip: 'Home Page',
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(
            // Put a SingleChildScrollView widget around this in case there is still a stutter scroll issue
            children: [
            parallax_home(first_name_home: 'Wesley', second_name_home: 'Mbuakoto'),
            const about_me_section(),
             life_section(),
              contact_section(),
  ]),
      ),
    );
  }
}
