import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_miguel_belotto/core/styles/project_colors.dart';
import 'package:portfolio_miguel_belotto/core/styles/styles.dart';
import 'package:portfolio_miguel_belotto/src/feature/home_screen/presentations/widgets/icons_row.dart';
import 'package:portfolio_miguel_belotto/src/feature/home_screen/presentations/widgets/social_media_text.dart';

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({
    required this.screenSize,
    required this.navigationShell,
    super.key,
  });
  final Size screenSize;
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        // borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      height: screenSize.height,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.adb,
                  color: ProjectColors.colorWhiteBase,
                ),
                Text(
                  'Miguel Belotto',
                  style: Styles.titleStyle,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            IconsRow(
              iconReceive: Icons.home_outlined,
              textReceive: 'Inicio',
              functionReceive: () => navigationShell.goBranch(0),
            ),
            IconsRow(
              iconReceive: Icons.switch_account_outlined,
              textReceive: 'Sobre mi',
              functionReceive: () => navigationShell.goBranch(1),
            ),
            /* IconsRow(
              iconReceive: Icons.auto_awesome_motion_outlined,
              textReceive: "Portfolio",
              functionReceive: () =>
                  {widgetPass.widgetsManage = PortfolioPage()},
            ),*/
            Divider(
              height: screenSize.height * 0.05,
              color: ProjectColors.colorTextSecondary,
            ),
            Text(
              'Redes Sociales',
              style: Styles.subtitleBoldStyle,
            ),
            SocialMediaText(
              socialMediaName: 'Twitter',
              urlSocialMedia: Uri.parse('https://twitter.com/MiguelBelotto00'),
            ),
            SocialMediaText(
              socialMediaName: 'Linkedin',
              urlSocialMedia:
                  Uri.parse('https://www.linkedin.com/in/miguel-belotto/'),
            ),
            SocialMediaText(
              socialMediaName: 'Github',
              urlSocialMedia: Uri.parse('https://github.com/MiguelBelotto00'),
            ),
          ],
        ),
      ),
    );
  }
}
