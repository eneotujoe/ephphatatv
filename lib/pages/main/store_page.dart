import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {

final List<String> images = <String>['water.png', 'balm.png', 'oil.png', 'vest.jpeg', 'towel.jpeg'];
final List<String> titles = <String>['Fountain Water', 'Healing Balm', 'Covenant Oil', 'Ephphata Vests', 'Ephphata Mantle'];
final List<String> urls = <String>['6zwylzfhfyjg', 'khzwrbw7uhnu', 'nputti10fzpz', 'nlefkgvp3j5o', 'm1tkoiwpps0p'];


  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          Container(
            height: 300,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/water.png', height: 200),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Fountain Water', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                ElevatedButton(
                  child: const Text('Place Order'),
                  onPressed: () async {
                    var url = 'https://flutterwave.com/pay/6zwylzfhfyjg';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ]
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/balm.png', height: 200),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Healing Balm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                ElevatedButton(
                  child: const Text('Place Order'),
                  onPressed: () async {
                    var url = 'https://flutterwave.com/pay/khzwrbw7uhnu';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ]
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/oil.png', height: 200),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Covenant Oil', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                ElevatedButton(
                  child: const Text('Place Order'),
                  onPressed: () async {
                    var url = 'https://flutterwave.com/pay/nputti10fzpz';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ]
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/vest.jpeg', height: 200),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Ephphata Vest', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                ElevatedButton(
                  child: const Text('Place Order'),
                  onPressed: () async {
                    var url = 'https://flutterwave.com/pay/nlefkgvp3j5o';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ]
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/towel.jpeg', height: 200),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Ephphata Mantle', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                ElevatedButton(
                  child: const Text('Place Order'),
                  onPressed: () async {
                    var url = 'https://flutterwave.com/pay/m1tkoiwpps0p';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ]
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/40-days-prayer.jpeg', height: 200),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('40 Days Prayer Marathon', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                ElevatedButton(
                  child: const Text('Download'),
                  onPressed: () async {
                    var url = 'https://ephphatag.org/wp-content/uploads/2022/03/40-DAYS-PRAYER-MARATHON-EBOOK.pdf';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ]
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.all(4.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/9-days-prayer.jpeg', height: 200),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('9 Days Prayer Exploit', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                ElevatedButton(
                  child: const Text('Download'),
                  onPressed: () async {
                    var url = 'https://ephphatag.org/wp-content/uploads/2022/03/9-DAYS-PRAYER-EXPLOIT-EBOOK.pdf';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ]
            ),
          ),
        ],
      )
    );
  }
}
