import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/commons/commons.dart';
import 'package:miguelbelotto00/providers/widgets_manage_basics.dart';
import 'package:miguelbelotto00/screens/about_me_page.dart';
import 'package:miguelbelotto00/widgets/icons_row.dart';
import 'package:miguelbelotto00/screens/init_page.dart';
import 'package:miguelbelotto00/widgets/social_media_text.dart';
import 'package:provider/provider.dart';

class SideBarMenu extends StatelessWidget {
  final Size screenSize;
  const SideBarMenu({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgetPass = Provider.of<WidgetsManageBasics>(context);
    return Container(
      color: Colors.black,
      height: screenSize.height,
      width: screenSize.width * 0.18,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.adb,
                  color: Commons.colorWhiteBase,
                  size: screenSize.width * 0.02,
                ),
                Text(
                  "Miguel Belotto",
                  style: GoogleFonts.sourceSansPro(
                      textStyle: TextStyle(
                          color: Commons.colorWhiteBase,
                          fontSize: screenSize.width * 0.02,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            IconsRow(
              iconReceive: Icons.home_outlined,
              textReceive: "Inicio",
              functionReceive: () =>
                  {widgetPass.widgetsManage = const InitPage()},
            ),
            IconsRow(
              iconReceive: Icons.switch_account_outlined,
              textReceive: "Sobre mi",
              functionReceive: () =>
                  {widgetPass.widgetsManage = const AboutMePage()},
            ),
            /* IconsRow(
              iconReceive: Icons.auto_awesome_motion_outlined,
              textReceive: "Portfolio",
              functionReceive: () =>
                  {widgetPass.widgetsManage = PortfolioPage()},
            ),*/
            Divider(
              height: screenSize.height * 0.05,
              color: Commons.colorTextSecondary,
            ),
            Text("Redes Sociales",
                style: GoogleFonts.sourceSansPro(
                    color: Commons.colorWhiteBase,
                    fontSize: screenSize.width * 0.015)),
            const SocialMediaText(
                socialMediaName: "Twitter",
                urlSocialMedia: "https://twitter.com/MiguelBelotto00"),
            const SocialMediaText(
                socialMediaName: "Linkedin",
                urlSocialMedia: "https://www.linkedin.com/in/miguel-belotto/"),
            const SocialMediaText(
                socialMediaName: "Github",
                urlSocialMedia: "https://github.com/MiguelBelotto00"),
          ],
        ),
      ),
    );
  }
}
