import 'package:flutter/material.dart';
import 'package:ephphatatv/pages/main/testimony_page.dart';
import 'package:ephphatatv/pages/main/deliverance_page.dart';
import 'package:ephphatatv/pages/main/sermon_page.dart';
import 'package:ephphatatv/pages/main/prayer_page.dart';
import 'package:ephphatatv/pages/main/healing_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {


  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: ListView(
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            color: Theme.of(context).colorScheme.onBackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text('Testimonies', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                OutlinedButton(
                  child: const Text('Watch Videos'),
                  onPressed: () => {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TestimonyPage()),),
                  }
                )
              ]
            ),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            color: Theme.of(context).colorScheme.onBackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text('Deliverances', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                OutlinedButton(
                  child: const Text('Watch Videos'),
                  onPressed: () => {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DeliverancePage()),),
                  }
                )
              ]
            ),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            color: Theme.of(context).colorScheme.onBackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text('Healings', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                OutlinedButton(
                  child: const Text('Watch Videos'),
                  onPressed: () => {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HealingPage()),),
                  }
                )
              ]
            ),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            color: Theme.of(context).colorScheme.onBackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text('Sermons And Devotionals', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                OutlinedButton(
                  child: const Text('Watch Videos'),
                  onPressed: () => {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SermonPage()),),
                  }
                )
              ]
            ),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            color: Theme.of(context).colorScheme.onBackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text('Prayers', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                OutlinedButton(
                  child: const Text('Watch Videos'),
                  onPressed: () => {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PrayerPage()),),
                  }
                )
              ]
            ),
          ),
        ],
      )
    );
  }
}
