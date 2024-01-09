import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _controller = TextEditingController();
  String s = '';

  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.background,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: AppColors.bodyColor,
        title: Text(
          'Search',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600, fontSize: W * .048),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .040),
              child: Card(
                child: Container(
                  height: W * .1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.formColor),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: W * .030),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: W * .048,
                                width: W * .048,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                          'assets/search1.png',
                                        ))),
                              ),
                              Container(
                                height: W * .048,
                                width: W * .048,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                          'assets/line.png',
                                        ))),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: W * .01),
                            child: TextField(
                              maxLines: 1,
                              controller: _controller,
                              onChanged: (value) {
                                setState(() {
                                  s = _controller.text.toString();
                                });
                              },
                              cursorColor: Colors.grey.shade400,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search location & services',
                                  hintStyle: GoogleFonts.poppins(
                                      color: AppColors.background,
                                      fontSize: W * .035,
                                      fontWeight: FontWeight.w500)),
                              style: GoogleFonts.poppins(
                                  color: Colors.grey.shade700,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          height: W * .048,
                          width: W * .048,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage('assets/path1.png'))),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            s != ''
                ? s.startsWith('R') || s.startsWith('r')
                    ? Padding(
                        padding: EdgeInsets.symmetric(horizontal: W * .060),
                        child: Column(
                          children: [
                            ListView(
                              padding: EdgeInsets.only(top: W * .060),
                              shrinkWrap: true,
                              children: [
                                CustomCard.searchCard('Royal Ln. Mesa',
                                    '2464 Royal Ln. Mesa, New Jersey 45463'),
                                SizedBox(
                                  height: W * .090,
                                  child: const Center(
                                    child: Divider(),
                                  ),
                                ),
                                CustomCard.searchCard('Ranchview Park',
                                    '4517 Washington Ave. Manchester, Kentucky 39495'),
                                SizedBox(
                                  height: W * .090,
                                  child: Center(
                                    child: Divider(),
                                  ),
                                ),
                                CustomCard.searchCard('Ash Dr. San',
                                    '2715 Ash Dr. San Jose, South Dakota 83475'),
                                SizedBox(
                                  height: W * .090,
                                  child: Center(
                                    child: Divider(),
                                  ),
                                ),
                                CustomCard.searchCard('Eligin St.',
                                    '6391 Elgin St. Celina, Delaware 10299'),
                                SizedBox(
                                  height: W * .090,
                                  child: Center(
                                    child: Divider(),
                                  ),
                                ),
                                CustomCard.searchCard('Thornridge Cir.',
                                    '1901 Thornridge Cir. Shiloh, Hawaii 81063'),
                              ],
                            )
                          ],
                        ),
                      )
                    : Column(
                        children: [
                          SizedBox(
                            height: W * .040,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: W * .060,
                            ),
                            child: SizedBox(
                              height: W * .080,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Recently Searched',
                                    style: GoogleFonts.poppins(
                                        fontSize: W * .044,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.background),
                                  ),
                                  Text(
                                    'Clear all',
                                    style: GoogleFonts.poppins(
                                        fontSize: W * .034,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.buttonColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: W * .020,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: W * .060),
                                child: Row(
                                  children: [
                                    Container(
                                      height: W * .055,
                                      width: W * .055,
                                      child: Image.asset('assets/search.png'),
                                    ),
                                    SizedBox(
                                      width: W * .030,
                                    ),
                                    Text(
                                      'Haircut',
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .039,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: W * .020,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: W * .060),
                                child: Row(
                                  children: [
                                    Container(
                                      height: W * .055,
                                      width: W * .055,
                                      child: Image.asset('assets/search.png'),
                                    ),
                                    SizedBox(
                                      width: W * .030,
                                    ),
                                    Text(
                                      'Shave',
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .039,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: W * .040,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: W * .060),
                                child: Divider(),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: W * .010, horizontal: W * .060),
                                child: SizedBox(
                                  height: W * .080,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Trending near you',
                                        style: GoogleFonts.poppins(
                                            fontSize: W * .044,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.background),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(vertical: W * .020),
                                child: ListView(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  children: [
                                    CustomCard.customCard1(
                                        context,
                                        'assets/running.png',
                                        'Woodlands Hills Salon',
                                        'Beuty salon - Near PalletMall, Woodland Hills',
                                        '4.8 ( 1900 ratings )'),
                                    SizedBox(
                                      height: W * .040,
                                    ),
                                    CustomCard.customCard1(
                                        context,
                                        'assets/salon.png',
                                        'Woodlands Hills Salon',
                                        'Beuty salon - Near PalletMall, Woodland Hills',
                                        '4.8 ( 1900 ratings )'),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                : Container()
          ],
        ),
      ),
    );
  }
}
