import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:ephphatatv/theme/colors.dart';

class GivePage extends StatefulWidget {
  const GivePage({Key? key}) : super(key: key);

  @override
  State<GivePage> createState() => _GivePageState();
}

class _GivePageState extends State<GivePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: ListView(
        children: [
          Container(
            height: 50,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Donation', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ]),
            ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                  child: Text('Donate By Card', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                ElevatedButton(
                  child: Text('Donate'),
                  onPressed: _launchURL,
                )
              ]),
            ),
          Container(
            height: 200,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Center(child: Text('Direct Bank Transfer', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,))),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Bank: ', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'Zenith Bank'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Account Name: ', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'Ephphata Global Ministries'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Account Number: ', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: '1211447347'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Sort Code: ', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: '057150893'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Swift Code: ', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'ZEIBNGL'),
                        ],
                      ),
                    ),
                  ),
                ]),
            ),
          ),
          
          Container(
            height: 180,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                  child: Text('Become Ephphata Partner', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                ElevatedButton(
                  child: const Text('Partner'),
                  onPressed: () async {
                        var url = 'https://ephphatag.org/become-a-partner';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                )
              ]),
          ),
        ],
      )
    );
  }
}
_launchURL() async {
  const url = 'https://ephphatag.org/become-a-partner';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}