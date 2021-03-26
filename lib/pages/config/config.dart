import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/providers.dart';
import '../../providers/appLanguage.dart';
import '../../mixin/portrait.dart';
import '../../themes/styles.dart';
import '../../locale/locales.dart';
import '../../constants/constants.dart';
import '../../routes/router.dart';

class ConfigApp extends StatefulWidget {
  final AppLanguage appLanguage;
  ConfigApp({this.appLanguage});

  @override
  _ConfigAppState createState() => _ConfigAppState();
}

class _ConfigAppState extends State<ConfigApp>
    with PortraitStatefulModeMixin<ConfigApp> {
  static FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: firebaseAnalytics);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Providers.providers(),
      builder: (BuildContext context, Widget child) {
        var langProvider = Provider.of<AppLanguage>(context);
        return MaterialApp(
          locale: langProvider.appLocale,
          supportedLocales: Locales.locales,
          localizationsDelegates: Locales.delegates,
          debugShowCheckedModeBanner: false,
          navigatorObservers: <NavigatorObserver>[observer],
          theme: Styles.themeData(true, context),
          onGenerateRoute: Routers.generateRoute,
          initialRoute: Constants.initial,
        );
      },
    );
  }
}
