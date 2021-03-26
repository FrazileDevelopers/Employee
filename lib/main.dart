import 'package:flutter/material.dart';
import 'providers/GoogleMobileAds.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'pages/config/config.dart';
import 'providers/appLanguage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  final initFuture = MobileAds.instance.initialize();
  final adState = AdState(initFuture);
  runApp(
    Provider.value(
      value: adState,
      builder: (context, child) => ConfigApp(
        appLanguage: appLanguage,
      ),
    ),
  );
}
