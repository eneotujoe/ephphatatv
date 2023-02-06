import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:ephphatatv/pages/drawer/testimonies.dart';
import 'package:ephphatatv/pages/drawer/prayer.dart';
import 'package:ephphatatv/pages/drawer/contact.dart';
import 'package:ephphatatv/pages/drawer/about.dart';




class DrawerNavigator extends StatefulWidget {
  const DrawerNavigator({Key? key}) : super(key: key);

  @override
  State<DrawerNavigator> createState() => _DrawerNavigatorState();
}

class _DrawerNavigatorState extends State<DrawerNavigator> {


  @override
  Widget build(BuildContext context) {
  
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    // color: AppColors.secondary,
                  ),
                  child: Image.asset('assets/images/logo.png'),
                ),
                const Divider(color: Colors.white,),
                ListTile(
                  leading: const Icon(Icons.comment_bank_outlined, size: 24.0,),
                  title: const Text('Testimonies'),
                  onTap: () => {
                    Navigator.pop(context),
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TestimonyPage()
                      )
                    ),
                  }
                ),
                ListTile(
                  leading: const Icon(Icons.send_outlined),
                  title: const Text('Prayer Request'),
                  onTap: () => {
                    Navigator.pop(context),
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PrayerPage()
                      )
                    ),
                  }
                ),
                ListTile(
                  leading: const Icon(Icons.contact_phone_outlined),
                  title: const Text('Contact'),
                  onTap: () => {
                    Navigator.pop(context),
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ContactPage()
                      )
                    ),
                  }
                ),
                ListTile(
                  leading: const Icon(Icons.info_outline),
                  title: const Text('About'),
                  onTap: () => {
                    Navigator.pop(context),
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AboutPage()
                      )
                    ),
                  }
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.all(4.0),
            child: TextButton.icon(
              onPressed: _launchURL,
              icon: const Icon(FontAwesomeIcons.globe, size: 18),
              label: const Text('www.ephphatag.org', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
            )
          )
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://ephphatag.org/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
