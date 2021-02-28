import 'package:william/configurations/assets.dart';
import 'package:william/configurations/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
import '../widgets/themes.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(radius: 100, backgroundImage: Image.asset('').image),
              SizedBox(height: 20,),
              Text('William', textScaleFactor: 4,),
              SizedBox(height: 20,),
              Text('Programming Language (Go, Swift, JavaScript, TypeScript, R, Python, Kotlin, Java, R) \nFramework (React, Angular, Flutter, React Native, Ionic) \nData Science, Artificial Intelligence',
                style: Theme.of(context).textTheme.caption, textScaleFactor: 2, textAlign: TextAlign.center,
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20, height: 20, child: Image.asset(Assets.linkedin),
                    ),
                    label: Text('LinkedIn'),
                    onPressed: () => html.window.open(Constants.PROFILE_LINKEDIN, 'William'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20, height: 20, child: Image.asset(Assets.twitter),
                    ),
                    label: Text('Twitter'),
                    onPressed: () => html.window.open(Constants.PROFILE_TWITTER, 'William'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}