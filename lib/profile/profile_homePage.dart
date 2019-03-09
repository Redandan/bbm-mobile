import 'package:flutter/material.dart';
import 'package:bbm/profile/main_menu.dart';
import 'package:bbm/profile/profile_models.dart';
import 'package:bbm/profile/profile_colors.dart';
import 'package:bbm/profile/profile_icons.dart';
import 'package:bbm/profile/profile_header.dart';
import 'package:bbm/profile/quick_actions.dart';

class ProfileHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profile = getProfile();

    return new Scaffold(
      body: new ListView(
        padding: const EdgeInsets.all(0.0),
        children: <Widget>[
          new ProfileHeader(profile),
          new QuickActions(),
          new MainMenu(),
        ],
      ),
    );
  }
}
