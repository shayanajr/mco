import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mco/core/base/base_variable.dart';
import 'package:mco/core/utils/routes.dart';
import 'package:mco/screen/splash_screen/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'core/i18n/locale_string.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await GetStorage.init();
  runApp(
    Phoenix(
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocaleString(),
      locale: const Locale('en', 'US'),
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Variable.colorVar.primaryColor,
        backgroundColor: Variable.colorVar.light,
        brightness: Brightness.light,
        canvasColor: Colors.transparent,
        fontFamily: "Montserrat",
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      // onGenerateRoute: Routes.onGenerateRoute,
      home: const SplashScreen(),
    );
  }
}