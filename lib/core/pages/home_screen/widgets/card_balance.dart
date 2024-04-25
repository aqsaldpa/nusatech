import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nusatech_test_apps/core/style/color.dart';
import 'package:nusatech_test_apps/core/style/text_theme.dart';

class CardBalanceWidget extends StatelessWidget {
  const CardBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
          height: 159,
          width: 327,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              colors: [cColorBlueGradient, cColorBlueLightGradient],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(15),
            children: [
              Text("Balance Portfolio",
                  style: TextThemeApps.textThemeDefault.textTheme.labelMedium!),
              const Gap(7),
              Text("\$xxx.xx",
                  style: TextThemeApps.textThemeDefault.textTheme.displayLarge!
                      .copyWith(fontWeight: FontWeight.bold)),
              const Gap(7),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: cColorBackground,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  child: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [cColorBlueGradient, cColorBlueLightGradient],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                    ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                    child: Text("Log In",
                        style: TextThemeApps
                            .textThemeDefault.textTheme.labelMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
