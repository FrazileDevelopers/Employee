import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'checkinternet.dart';
import 'themeProvider.dart';
import 'AdmobAds.dart';
import 'appLanguage.dart';

class Providers {
  static List<SingleChildWidget> providers() => [
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider<AppLanguage>(
          create: (_) => AppLanguage(),
        ),
        // ChangeNotifierProvider<AdmobAds>(
        //   create: (_) => AdmobAds(),
        // ),
        ChangeNotifierProvider<InternetStatus>(
          create: (_) => InternetStatus(),
        ),
      ];
}
