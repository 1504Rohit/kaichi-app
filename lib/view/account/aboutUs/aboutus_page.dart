import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/account/aboutUs/licence_page.dart';
import 'package:kaichi_user/view/account/aboutUs/privecy_page.dart';
import 'package:kaichi_user/view/account/aboutUs/terms.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: W * .032),
              child: Text(
                'About Us',
                style: GoogleFonts.poppins(
                    fontSize: W * .060,
                    fontWeight: FontWeight.w700,
                    color: AppColors.background),
              ),
            ),
            SizedBox(
              height: W * .040,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => TermsPage()));
              },
              title: Text(
                'Terms of Service',
                style: GoogleFonts.poppins(
                  fontSize: W * .036,
                  fontWeight: FontWeight.w600,
                  color: AppColors.background,
                ),
              ),
              trailing: Image.asset(
                'assets/arrowforward.png',
                color: AppColors.background,
              ),
            ),
            SizedBox(
              height: W * .020,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const PrivecyPage()));
              },
              title: Text(
                'Privacy Policy',
                style: GoogleFonts.poppins(
                  fontSize: W * .036,
                  fontWeight: FontWeight.w600,
                  color: AppColors.background,
                ),
              ),
              trailing: Image.asset(
                'assets/arrowforward.png',
                color: AppColors.background,
              ),
            ),
            SizedBox(
              height: W * .020,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LicencePage()));
              },
              title: Text(
                'Licenses',
                style: GoogleFonts.poppins(
                  fontSize: W * .036,
                  fontWeight: FontWeight.w600,
                  color: AppColors.background,
                ),
              ),
              trailing: Image.asset(
                'assets/arrowforward.png',
                color: AppColors.background,
              ),
            )
          ],
        ),
      ),
    );
  }
}
