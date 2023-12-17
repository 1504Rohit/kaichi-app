import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

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
            Text(
              'Terms of service',
              style: GoogleFonts.poppins(
                  fontSize: W * .060,
                  fontWeight: FontWeight.w700,
                  color: AppColors.background),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem odio enim ut nullam tortor, bibendum interdum. Varius at amet, dignissim morbi ac pulvinar eu blandit lorem. Est pellentesque bibendum quam odio ac, tortor sit. Sed tellus at tellus amet mi.',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.background),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem odio enim ut nullam tortor, bibendum interdum. Varius at amet, dignissim morbi ac pulvinar eu blandit lorem. Est pellentesque bibendum quam odio ac, tortor sit. Sed tellus at tellus amet mi.',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.background),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'orem ipsum dolor sit amet, consectetur adipiscing elit. Sem odio enim ut nullam tortor, bibendum interdum. Varius at amet, dignissim morbi ac pulvinar eu blandit lorem. Est pellentesque bibendum quam odio ac, tortor sit. Sed tellus at tellus amet mi.',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.background),
              ),
            ),
            Container(
              child: Text(
                'orem ipsum dolor sit amet, consectetur adipiscing elit. Sem odio enim ut nullam tortor, bibendum interdum. Varius at amet, dignissim morbi ac pulvinar eu blandit lorem. Est pellentesque bibendum quam odio ac, tortor sit. Sed tellus at tellus amet mi.',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.background),
              ),
            )
          ],
        ),
      ),
    );
  }
}
