// import 'package:firebase_auth_web/firebase_auth_web.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:health_app/FirstPage.dart';
import 'package:health_app/page/NavPage.dart';
import 'package:health_app/page/UserType.dart';
import 'package:health_app/provider/dbdata.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await fetchData();
  ErrorWidget.builder = (FlutterErrorDetails details) => Scaffold(
        body: Container(
            child: Center(
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.indigo),
          ),
        )),
      );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Google SignIn';

  @override
  Widget build(BuildContext context) {
    Widget example3 = SplashScreenView(
      home: FirebaseAuth.instance.currentUser != null
          ? existence == true
              ? NavPage()
              : UserType()
          // : SignUpWidget(),
          : App(),
      duration: 3000,
      imageSize: 300,
      imageSrc: "assets/images/healthCareLogo.png",
      text: "Keeping You Well",
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.indigo),
      // home: HomePage(),
      // home: FirebaseAuth.instance.currentUser != null
      //   ? existence == true
      //       ? NavPage()
      //       : UserType()
      //   // : SignUpWidget(),
      //   :App()
      home: example3,
    );
  }
}
