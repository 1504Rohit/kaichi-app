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
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 6; i++)
                Column(
                  children: [
                    Container(
                        height: Mq.h * .126,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: W * .040, vertical: W * .040),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: Mq.w * .065,
                                backgroundImage:
                                    AssetImage('assets/image 21.png'),
                              ),
                              SizedBox(
                                width: W * .030,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: W * .010),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: W * .750,
                                        child: Text(
                                          'Lorem ipsum dolor sub-heading for the gym discription',
                                          style: GoogleFonts.poppins(
                                              fontSize: W * .038,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.background),
                                        )),
                                    SizedBox(
                                      height: W * .030,
                                    ),
                                    Text(
                                      '1:20 PM',
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .034,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.buttonColor),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: W * .060),
                      child: i == 6 - 1 ? Container() : Divider(),
                    )
                  ],
                )
            ],
          ),
        ));
  }
}
