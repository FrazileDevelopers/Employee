// import 'package:firebase_admob/firebase_admob.dart'
//     show
//         AdSize,
//         BannerAd,
//         FirebaseAdMob,
//         InterstitialAd,
//         MobileAdEvent,
//         MobileAdTargetingInfo;
// import 'package:flutter/material.dart' show ChangeNotifier;
// import '../constants/constants.dart' show Constants;

// class AdmobAds with ChangeNotifier {
//   static final MobileAdTargetingInfo targetInfo = MobileAdTargetingInfo(
//     testDevices: <String>[],
//     keywords: <String>[
//       'WALLPAPERS',
//       'WALLS',
//       'AMOLED',
//       'Clothing',
//       'Food',
//       'Juices',
//       'Crypto',
//       'Finance',
//       'Bitcoin',
//       'Wallets',
//       'Coins',
//       'Mining',
//       'Youtube',
//       'Github',
//     ],
//     childDirected: true,
//   );

//   BannerAd _bannerAd;
//   InterstitialAd _interstitialAd;

//   BannerAd createBannerAd() => BannerAd(
//       adUnitId: Constants.bannerID,
//       size: AdSize.banner,
//       targetingInfo: targetInfo,
//       listener: (MobileAdEvent event) {
//         print("Banner event : $event");
//       });

//   InterstitialAd createInterstitialAd() => InterstitialAd(
//       adUnitId: Constants.interstitialID,
//       targetingInfo: targetInfo,
//       listener: (MobileAdEvent event) {
//         print("Banner event : $event");
//       });

//   void initialize() {
//     FirebaseAdMob.instance.initialize(appId: Constants.appID);
//     bannerAd();
//   }

//   void bannerAd() {
//     _bannerAd = createBannerAd()
//       ..load()
//       ..show();
//   }

//   void interstitialAd() {
//     _interstitialAd = createInterstitialAd()
//       ..load()
//       ..show();
//   }

//   void dispose() {
//     _bannerAd?.dispose();
//     _interstitialAd?.dispose();
//   }
// }
