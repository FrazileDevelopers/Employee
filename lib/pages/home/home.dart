import 'package:flutter/material.dart';
import '../../providers/GoogleMobileAds.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../constants/localeKeys.dart';
import '../../providers/checkinternet.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';
import '../../locale/appLocalizations.dart';
import '../../extensions/fzcapatilize.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BannerAd banner;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final adState = Provider.of<AdState>(context);
    adState.initialiation.then((status) {
      setState(() {
        banner = BannerAd(
          size: AdSize.banner,
          adUnitId: adState.bannerAdUnitId,
          listener: adState.adListener,
          request: AdRequest(),
        )..load();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    // Provider.of<AdmobAds>(context, listen: false).initialize();
    Provider.of<InternetStatus>(context, listen: false).updateInternetStatus();
  }

  @override
  void dispose() {
    super.dispose();
    // Provider.of<AdmobAds>(context, listen: false).dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppLocalizations getLocaleName = AppLocalizations.of(context);
    var internetStatus = Provider.of<InternetStatus>(context);
    final mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getLocaleName
              .translate(
                LocaleKeys.appnameKey,
              )
              .capitalize(),
        ),
        centerTitle: true,
      ),
      body: internetStatus.status
          ? Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      getLocaleName.translate(
                        LocaleKeys.netactiveKey,
                      ),
                    ),
                  ),
                ),
                if (banner == null)
                  SizedBox(height: 50)
                else
                  Container(
                    height: 50,
                    child: AdWidget(
                      ad: banner,
                    ),
                  ),
              ],
            )
          : Center(
              child: Lottie.asset(
                'assets/json/4760-no-internet-connection.json',
              ),
            ),
    );
  }
}
