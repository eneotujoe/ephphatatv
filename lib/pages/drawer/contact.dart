import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);
  static const String routeName = '/contact';

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

final List<String> urls = <String>['https://web.facebook.com/PadreSammyUmanahCM/?_rdc=1&_rdr', 'https://twitter.com/ephphatae', 'https://www.youtube.com/channel/UC4JbGOz2JATEVxcMb079Y3w', 'https://www.instagram.com/ephphata.tv_etv_fountainsplash/'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: const Text('Contact')),
      backgroundColor: Theme.of(context).colorScheme.background,

      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Container(
            height: 180,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Phone',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Nigeria: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '+2347051869038 '),
                        TextSpan(text: '+2347051869472'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'United States: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '+1(631)402-6444'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Container(
            height: 180,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Email',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'info@ephphatag.org, '),
                          TextSpan(text: 'onlinestore@ephphatag.org, '),
                          TextSpan(text: 'padresammy@ephphatag.org '),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Container(
            height: 200,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Address',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Lagos: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Vincentian Retreat Centre1. De Paul close,off Yakoyo Bus stop,Ojudu Berger,Ikeja,Lagos,Nigeria.'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Abuja: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'St. Kizito Catholic Church, FCT-Abuja.Nigeria'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'United States: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '6501 94th Ave, Lanham, MD 20706 USA'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Container(
            height: 100,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Follow Us',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.facebook),
                      onPressed: () async {
                        var url = urls[0];
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.twitter),
                      onPressed: () async {
                        var url = urls[1];
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.youtube),
                      onPressed: () async {
                        var url = urls[2];
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.instagram),
                      onPressed: () async {
                        var url = urls[3];
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      )
    );
  }
}
