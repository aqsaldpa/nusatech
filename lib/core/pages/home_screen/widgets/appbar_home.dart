import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nusatech_test_apps/core/style/image_constants.dart';
import 'package:nusatech_test_apps/core/style/text_theme.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leadingWidth: 170,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            children: [
              SvgPicture.asset(ImageConstants.instance.iconNotification),
              const Gap(10),
              SvgPicture.asset(ImageConstants.instance.iconPerson),
            ],
          ),
        )
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Image.asset(
              ImageConstants.instance.logoPexBank,
              fit: BoxFit.cover,
              width: 30,
              height: 30,
            ),
            const Gap(10),
            Text("PEXBANK",
                style: TextThemeApps.textThemeDefault.textTheme.labelLarge!
                    .copyWith(fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
