import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: W * .198,
        centerTitle: true,
        backgroundColor: AppColors.background,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Notification',
          style: GoogleFonts.poppins(
              fontSize: W * .048,
              fontWeight: FontWeight.w600,
              color: AppColors.White),
        ),
      ),
      body: Center(
        child: Image.asset('assets/notific.png'),
      ),
    );
  }
}
