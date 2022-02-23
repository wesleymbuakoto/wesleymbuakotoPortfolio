import 'package:flutter/material.dart';
import 'package:web_portfolio/components/navigation_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:web_portfolio/components/hobby_components/hobby_card.dart';
import 'package:web_portfolio/components/hobby_components/parallax_top_hobby.dart';
import 'package:web_portfolio/components/home_components/contact_section.dart';



class hobby_page extends StatelessWidget {
  const hobby_page({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              parallax_top_hobby(title_general: "Hobbies"),
              hobby_cards(),
              contact_section(),
            ],
          ),
        ),
      ),
    );
  }
}

