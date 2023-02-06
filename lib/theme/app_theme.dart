import 'package:flutter/material.dart';


    const ColorScheme colorScheme = ColorScheme(
      primary: Color(0xFF3CA7FF),
      onPrimary: Color.fromARGB(255, 255, 255, 255),
      secondary: Color(0xFF21277B),
      background: Color(0xFFECEFF1),
      onSurface: Color(0xFF21277B),
      brightness: Brightness.light,
      error: Color(0xFF21277B),
      onBackground: Color(0xFF000000),
      onError: Color(0xFF21277B),
      onSecondary: Color(0xFF000000),
      surface: Color.fromARGB(255, 0, 0, 0),
    );

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF21277B),
      iconTheme: IconThemeData(color: Color(0xFF3CA7FF)),
      actionsIconTheme: IconThemeData(color: Color(0xFF3CA7FF)),
      titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Color(0xFF3CA7FF))),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Color(0xFF21277B),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Color(0xFF21277B),
    selectedItemColor: Color(0xFFFFFFFF),
    unselectedItemColor: Color(0xFF3CA7FF),
    elevation: 0,
    ),

    listTileTheme: const ListTileThemeData(
      selectedColor: Color(0xFF3CA7FF),
      selectedTileColor: Color(0xFF372091),
      iconColor: Color(0xFF3CA7FF),
      textColor: Color(0xFF3CA7FF),
    ),

    // fontFamily: 'Georgia',
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 18.0),
      bodyText2: TextStyle(fontSize: 14.0, color: Color(0xFF21277B)),
      button: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    ),
    iconTheme: const IconThemeData(color: Color(0xFF21277B)),

    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 100.0,vertical: 12.0)
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
      ),
      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF21277B)),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color>(Colors.black26)
    )),

    outlinedButtonTheme: OutlinedButtonThemeData(style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 50.0,vertical: 12.0)
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
      ),
      foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFFD2A70F)),
      overlayColor: MaterialStateProperty.all<Color>(Colors.black26),
      side: MaterialStateProperty.all(const BorderSide(color: Color(0xFFD2A70F), width: 3)),
    )),

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide.none
      ),
      filled: true,
      fillColor: Colors.grey.withOpacity(0.1)
    ),
  );
}