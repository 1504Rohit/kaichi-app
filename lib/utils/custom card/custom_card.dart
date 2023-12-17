import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class CustomCard {
  static Widget customCard3(String qus, String ans) {
    double W = Mq.w;
    return Container(
      height: W * .092,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromRGBO(242, 242, 245, 1),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: W * .020),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              qus,
              style: GoogleFonts.poppins(
                  fontSize: W * .032,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
              ans,
              style: GoogleFonts.poppins(
                  fontSize: W * .032,
                  fontWeight: FontWeight.w500,
                  color: AppColors.buttonColor),
            ),
          ],
        ),
      ),
    );
  }

  static Widget customCard5(
    String head,
    String sub,
    VoidCallback onClickDelete,
    VoidCallback onClickEdit,
  ) {
    double W = Mq.w;
    return Container(
      height: W * .280,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: W * .048,
            width: W * .048,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(242, 242, 245, 1),
            ),
            child: const Center(
              child: Icon(Icons.home_outlined),
            ),
          ),
          SizedBox(
            width: W * .030,
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    head,
                    style: GoogleFonts.poppins(
                        fontSize: W * .034,
                        fontWeight: FontWeight.w600,
                        color: AppColors.background),
                  ),
                  SizedBox(
                    height: W * .012,
                  ),
                  Text(
                    sub,
                    style: GoogleFonts.poppins(
                        fontSize: W * .032,
                        fontWeight: FontWeight.w500,
                        color: AppColors.background),
                  ),
                  SizedBox(
                    height: W * .020,
                  ),
                  SizedBox(
                    width: W * .434,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: onClickDelete,
                          child: Text(
                            'Delete',
                            style: GoogleFonts.poppins(
                                fontSize: W * .030,
                                fontWeight: FontWeight.w500,
                                color: Colors.red),
                          ),
                        ),
                        TextButton(
                          onPressed: onClickEdit,
                          child: Text(
                            'Edit',
                            style: GoogleFonts.poppins(
                                fontSize: W * .030,
                                fontWeight: FontWeight.w500,
                                color: AppColors.buttonColor),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  static Widget customCard4(
    String pic,
    String heading,
    String address,
    String service,
  ) {
    double W = Mq.w;
    return Container(
      clipBehavior: Clip.hardEdge,
      height: W * .244,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(12)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Flexible(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(top: W * .040),
            child: Container(
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/running.png',
                    scale: 0.9,
                    fit: BoxFit.contain,
                  )),
            ),
          ),
        ),
        Flexible(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: W * .040,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    heading,
                    style: GoogleFonts.poppins(
                        fontSize: W * .036,
                        fontWeight: FontWeight.w600,
                        color: AppColors.background),
                  ),
                ),
                SizedBox(
                  height: W * .010,
                ),
                Container(
                  child: Text(
                    address,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontSize: W * .024,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: W * .020,
                ),
                Container(
                  child: Text(
                    service,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontSize: W * .024,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(top: W * .056),
            child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: AppColors.buttonColor,
                    ),
                    SizedBox(
                      height: W * .006,
                    ),
                    Text(
                      'Favorite',
                      style: GoogleFonts.poppins(
                          fontSize: W * .020,
                          fontWeight: FontWeight.w500,
                          color: AppColors.buttonColor),
                    )
                  ],
                )),
          ),
        ),
      ]),
    );
  }

  static Widget customCard2(
    String pic,
    String heading,
    String address,
    String service,
    String price,
  ) {
    double W = Mq.w;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: W * .060),
      child: Card(
        child: Container(
          height: W * .244,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Row(children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: W * .040),
                child: Container(
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        pic,
                        scale: 0.9,
                        fit: BoxFit.contain,
                      )),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .040, vertical: W * .020),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        heading,
                        style: GoogleFonts.poppins(
                            fontSize: W * .036,
                            fontWeight: FontWeight.w600,
                            color: AppColors.background),
                      ),
                      SizedBox(
                        height: W * .010,
                      ),
                      Container(
                        child: Text(
                          address,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontSize: W * .024,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: W * .006,
                      ),
                      Container(
                        child: Text(
                          service,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontSize: W * .024,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: W * .006,
                      ),
                      Container(
                        width: W * .380,
                        child: Text(
                          price,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontSize: W * .024,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: W * .040),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColors.buttonColor,
                        ),
                        SizedBox(
                          height: W * .006,
                        ),
                        Text(
                          'Directions',
                          style: GoogleFonts.poppins(
                              fontSize: W * .020,
                              fontWeight: FontWeight.w500,
                              color: AppColors.buttonColor),
                        )
                      ],
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  static Widget customCard1(
      String pic, String heading, String address, String rating) {
    double W = Mq.w;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: W * .060),
      child: Container(
        height: W * .236,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.buttonColor, width: 0.5),
            borderRadius: BorderRadius.circular(12)),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Flexible(
            flex: 2,
            child: Container(
              height: W * .236,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain, image: AssetImage(pic))),
              child: Padding(
                padding: EdgeInsets.all(W * .020),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset('assets/Group 34359.png')),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: W * .020, horizontal: W * .020),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        heading,
                        style: GoogleFonts.poppins(
                            fontSize: W * .036,
                            fontWeight: FontWeight.w600,
                            color: AppColors.background),
                      ),
                    ),
                    SizedBox(
                      height: W * .006,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/star.png'),
                          SizedBox(
                            width: W * .005,
                          ),
                          Text(
                            rating,
                            style: GoogleFonts.poppins(
                                fontSize: W * .024,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: W * .003,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/location.png'),
                          SizedBox(
                            width: W * .005,
                          ),
                          Expanded(
                            child: Container(
                              child: Text(
                                address,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    fontSize: W * .024,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  static Widget customCard(
      String offer, String title, String Subtitle, String image) {
    double W = Mq.w;
    return Container(
      width: W * .480,
      decoration: BoxDecoration(
          color: AppColors.White, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: W * .25,
                width: W * .480,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image)),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12))),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(W * .020),
                  child: Image.asset('assets/Group 34359.png'),
                ),
              )
            ],
          ),
          Container(
            height: W * .156,
            decoration: BoxDecoration(
                color: AppColors.White,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(W * .016),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: offer,
                              style: GoogleFonts.poppins(
                                  fontSize: W * .030,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.buttonColor)),
                          TextSpan(
                              text: title,
                              style: GoogleFonts.poppins(
                                  fontSize: W * .030,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ]),
                      ),
                    ),
                    Container(
                      child: Text(
                        Subtitle,
                        style: GoogleFonts.poppins(
                            fontSize: W * .020,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(130, 130, 130, 1)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
