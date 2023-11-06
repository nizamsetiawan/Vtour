import 'package:flutter/material.dart';
import 'package:villagetour/config/app.asset.dart';
import 'package:villagetour/config/app.route.dart';
import 'package:villagetour/widget/button_custom.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppAssets.bgAwal,
            fit: BoxFit.cover,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Eksplorasi Autentik\nKenangan Abadi!',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Temukan Pesona Desa di Indonesia!',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                ),
                const SizedBox(height: 30),
                ButtonCustom(
                  label: 'Mulai Petualangan Anda',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, AppRoute.singin);
                  },
                  isExpand: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
