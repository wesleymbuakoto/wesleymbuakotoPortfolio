import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:auto_size_text/auto_size_text.dart';


class navigation_drawer extends StatelessWidget {
  const navigation_drawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 75,),
            OutlinedButton(
                onPressed: () => context.go('/projects'),
                child: const AutoSizeText('Projects',
                style: TextStyle(fontSize: 30),)),
            SizedBox(height: 15,),
            OutlinedButton(
                onPressed: () => context.go('/certifications-and-education'),
                child: Column(
                  children: [
                    AutoSizeText('Certifications &',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),),
                    AutoSizeText('Education',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),),
                  ],
                )),
            SizedBox(height: 15,),
            OutlinedButton(
                onPressed: () => context.go('/work-experience'),
                child: const AutoSizeText('Work Experience',
                  style: TextStyle(fontSize: 30),)),
            SizedBox(height: 15,),
            OutlinedButton(
                onPressed: () => context.go('/skills'),
                child: const AutoSizeText('Skills',
                  style: TextStyle(fontSize: 30),)),
            SizedBox(height: 15,),
            OutlinedButton(
                onPressed: () => context.go('/hobbies'),
                child: const AutoSizeText('Hobbies',
                  style: TextStyle(fontSize: 30),)),

          ],
        ),
      );
  }
}