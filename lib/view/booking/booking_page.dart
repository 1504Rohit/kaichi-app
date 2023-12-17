import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/booking/running.dart';
import 'package:kaichi_user/view/notification_page.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(W * .198),
        child: Container(
          decoration: BoxDecoration(color: AppColors.background),
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: AppColors.White,
                    ),
                    Text(
                      'Booking',
                      style: GoogleFonts.poppins(
                          fontSize: W * .048,
                          fontWeight: FontWeight.w600,
                          color: AppColors.White),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const NotificationPage()));
                      },
                      child: SizedBox(
                        height: W * .080,
                        width: W * .080,
                        child: Image.asset(
                          'assets/notification.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
                clipBehavior: Clip.hardEdge,
                height: W * .12,
                decoration: BoxDecoration(color: AppColors.formColor),
                child: TabBar(
                  dividerHeight: 0,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(color: AppColors.buttonColor),
                  splashBorderRadius: BorderRadius.circular(12),
                  physics: const ClampingScrollPhysics(),
                  tabs: [
                    Tab(
                      child: Center(
                        child: Text(
                          'Running',
                          style: GoogleFonts.poppins(
                              fontSize: W * .034,
                              fontWeight: FontWeight.w600,
                              color: AppColors.background),
                        ),
                      ),
                    ),
                    Tab(
                      child: Center(
                        child: Text(
                          'Completed',
                          style: GoogleFonts.poppins(
                              fontSize: W * .034,
                              fontWeight: FontWeight.w600,
                              color: AppColors.background),
                        ),
                      ),
                    )
                  ],
                )),
            Expanded(
                child: TabBarView(
              children: [
                Running.running(),
                Running.running(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
