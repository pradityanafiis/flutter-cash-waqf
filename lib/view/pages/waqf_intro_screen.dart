import 'package:flutter/material.dart';
import 'package:flutter_cash_waqf/utilities/constant.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class WaqfIntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _pageDecoration = PageDecoration(
      pageColor: Colors.white,
      bodyAlignment: Alignment.center,
      imageAlignment: Alignment.center,
      imagePadding: EdgeInsets.only(top: 75),
    );

    List<PageViewModel> _pagesViewModel = [
      PageViewModel(
        image: Image.asset("images/bwi-logo-1.png"),
        title: "Hadis Riwayat Muslim (1631)",
        body:
            "Jika seseorang meninggal dunia, maka terputuslah amalannya kecuali tiga perkara (yaitu): sedekah jariyah, ilmu yang dimanfaatkan, atau do’a anak yang shalih",
        decoration: _pageDecoration,
      ),
      PageViewModel(
        title: "Apa itu wakaf?",
        body:
            "Wakaf adalah perbuatan hukum wakif untuk memisahkan dan/atau menyerahkan sebagian harta benda miliknya untuk dimanfaatkan selamanya atau untuk jangka waktu tertentu sesuai dengan kepentingannya guna keperluan ibadah dan/atau kesejahteraan umum menurut syariah.",
        decoration: _pageDecoration,
      ),
      PageViewModel(
        title: "Apa itu wakaf abadi?",
        body:
            "Wakaf abadi merupakan wakaf uang yang tidak memiliki jangka waktu pengembalian. Sehingga pemanfaatan dana tersebut akan berjalan selamanya (abadi).",
        decoration: _pageDecoration,
      ),
      PageViewModel(
        title: "Apa itu wakaf berjangka?",
        body:
            "Wakaf berjangka merupakan wakaf uang yang tidak memiliki jangka waktu pengembalian. Sehingga pemanfaatan dana tersebut akan terhenti ketika nominal wakafnya telah dikembalikan.",
        decoration: _pageDecoration,
      ),
    ];

    return IntroductionScreen(
      pages: _pagesViewModel,
      onDone: () => Get.offAllNamed("/boarding"),
      showNextButton: true,
      showSkipButton: true,
      skip: const Text("Lewati"),
      next: const Text("Selanjutnya"),
      done:
          const Text("Selesai", style: TextStyle(fontWeight: FontWeight.bold)),
      globalBackgroundColor: Colors.white,
      dotsDecorator: DotsDecorator(
        activeColor: Constant.bwiGreenColor,
      ),
    );
  }
}
