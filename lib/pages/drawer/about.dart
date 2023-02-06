import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      backgroundColor: Theme.of(context).colorScheme.background,
      // backgroundColor: Color(0xFFECEFF1),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Image.asset('assets/images/img-2.png', height: 300,),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('ABOUT REV. FATHER SAMUEL GREGORY UMANAH CM', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const Text(
            'Rev. Fr. Samuel Ekemini-Obong Gregory Umanah CM is a Catholic Priest of the Congregation of the Mission, (Vincentians) Nigeria Province, and currently an Associate Pastor of St. Kizito Catholic Church, Kuje FCT-Abuja. Fr Sam’s response to the call of God in his life is via reaching out to the multitude who are in need of Christ: the oppressed, the poor, the sick and the needy. He is blessed with the uncommon grace of intercession, prophesy, healing and deliverance from bondages. Through his ministry many families and communities have been delivered and restored to God. His Apostolic outreach has brought liberation to many in different countries including United States, United Kingdom, South Africa, Turkey and Kenya.'
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('ABOUT EPHPHATA GLOBAL MINISTRIES', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const Text(
            'Ephphata Global Ministries is a Christian ministry under the Roman Catholic Church and registered under the Laws of the Federal Republic of Nigeria. We believe the entire Scripture as the infallible Word of God and all our programs and activities are based on the Sacred Scriptures, doctrines of the Catholic Church and ultimately on inspiration of the Holy Spirit. We recognize the Holy Spirit as the Ultimate Teacher and, our unction to function. Thus, Ephphata Global Ministries depends solely on the power of the Holy Spirit for all its operations and activities.'
            )
        ],
      )
    );
  }
}