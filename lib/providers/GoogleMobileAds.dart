import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdState {
  Future<InitializationStatus> initialiation;

  AdState(this.initialiation);

  String get bannerAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/2934735716'
      : 'ca-app-pub-3940256099942544/2934735716';

  AdListener get adListener => _adListener;

  AdListener _adListener = AdListener(
    onAdLoaded: (ad) => print('Ad Loaded: ${ad.adUnitId}.'),
    onAdClosed: (ad) => print('Ad Closed: ${ad.adUnitId}.'),
    onAdFailedToLoad: (ad, error) =>
        print('Ad Failed to load: ${ad.adUnitId}, $error.'),
    onAdOpened: (ad) => print('Ad Opened: ${ad.adUnitId}.'),
    onAppEvent: (ad, name, data) =>
        print('App Event: ${ad.adUnitId}, $name, $data.'),
    onApplicationExit: (ad) => print('App Exit: ${ad.adUnitId}.'),
    onNativeAdClicked: (nativeAd) =>
        print('Native Ad Clicked: ${nativeAd.adUnitId}.'),
    onNativeAdImpression: (nativeAd) =>
        print('Native Ad Impression: ${nativeAd.adUnitId}.'),
    onRewardedAdUserEarnedReward: (ad, reward) =>
        print('User Reward: ${ad.adUnitId}, ${reward.amount} ${reward.type}.'),
  );
}
