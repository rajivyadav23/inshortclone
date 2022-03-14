import 'package:inshortclone/constants.dart';
import 'package:inshortclone/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inshort Clone',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom()),
        textTheme: Theme.of(context).textTheme.apply(displayColor: textColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(defaultPadding),
            backgroundColor: primaryColor,
            minimumSize: const Size(double.infinity, 10),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor.withOpacity(0.3),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor.withOpacity(0.5),
            ),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: textColor),
          toolbarTextStyle: Theme.of(context)
              .textTheme
              .apply(displayColor: textColor)
              .bodyText2,
          titleTextStyle: Theme.of(context)
              .textTheme
              .apply(displayColor: textColor)
              .headline6,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
