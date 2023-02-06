import 'package:flutter/material.dart';

class TestimonyPage extends StatelessWidget {
  static const String routeName = '/testimony';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Testimonies')),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(8.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Praise to Jesus, for 10yrs have been finding very difficult walk with my two legs since i had accident, I can not drive or do anything for myself, accept with the aid of my children. On this blessed day that Fr. Sam came to our region for Ephphata Summit May,2021,He prayed for me and with used of Ephphata Sacramental, He declared me free. instantly i started walking to the Glory of God.'
                    ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundColor: Colors.transparent,
                        child: SizedBox(
                          width: 200,
                          height: 200,
                          child: ClipOval(
                            child: Image.asset('assets/images/adebisi-ify-ann.png'),
                          ),
                        )
                      ),
                    ),
                    const Text('Adebisi Ify', style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ]),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Halleluia!, Am very excited to tell the world what God of Fr. Sam has done in my life and family. As an American,i hardly believe in some spiritual things,especially in Church. But this very day i came in contact with this Priest,He touched me and gave me Ephphata Water,Ephphata oil and Balm to use them on myself for one week. I never in them,but after i used them, I was fully restored,my health,business and my whole family. Am very thankful to God.'
                    ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.blueGrey[50],
                        child: SizedBox(
                          width: 200,
                          height: 200,
                          child: ClipOval(
                            child: Image.asset('assets/images/david-sandr.jpeg'),
                          ),
                        )
                      ),
                    ),
                    const Text('David Walker S', style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ]),
          ),
        ],
      )
    );
  }
}