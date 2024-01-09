import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/salondetails_page.dart';

class CustomCard {
  static Widget customCard3(String qus, String ans) {
    double W = Mq.w;
    return Container(
      height: Mq.h * .058,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(W * .018),
        color: const Color.fromRGBO(242, 242, 245, 1),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: W * .030),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                qus,
                style: GoogleFonts.poppins(
                    fontSize: W * .036,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            IntrinsicWidth(
              child: TextFormField(
                initialValue: ans,
                style: GoogleFonts.poppins(
                    fontSize: W * .036,
                    fontWeight: FontWeight.w500,
                    color: AppColors.buttonColor),
                textAlign: TextAlign.end,
                cursorColor: AppColors.buttonColor,
                decoration: InputDecoration(border: InputBorder.none),
                //   initialValue:  Text(
                //   ans,
                //   style: GoogleFonts.poppins(
                //       fontSize: W * .036,
                //       fontWeight: FontWeight.w500,
                //       color: AppColors.buttonColor),
                // ), ,
              ),
            )
          ],
        ),
      ),
    );
  }

  static Widget customcard6(String pic, String title) {
    return Container(
      width: Mq.w * .450,
      clipBehavior: Clip.hardEdge,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(Mq.w * .024)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: Mq.w * .220,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pic))),
              child: Padding(
                padding: EdgeInsets.all(Mq.w * .020),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: Mq.w * .055,
                    width: Mq.w * .055,
                    child: Image.asset('assets/Group 34359.png'),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: Mq.w * .100,
            width: double.infinity,
            color: AppColors.background,
            child: Padding(
              padding: EdgeInsets.all(Mq.w * .020),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: AppColors.White,
                      fontSize: Mq.w * .034),
                ),
              ),
            ),
          )
        ],
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
    return SizedBox(
      height: W * .280,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: W * .075,
            width: W * .075,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(242, 242, 245, 1),
            ),
            child: const Center(
              child: Icon(Icons.home_outlined),
            ),
          ),
          SizedBox(
            width: W * .020,
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      head,
                      style: GoogleFonts.poppins(
                          fontSize: W * .034,
                          fontWeight: FontWeight.w600,
                          color: AppColors.background),
                    ),
                  ),
                  SizedBox(
                    height: W * .012,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      sub,
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: AppColors.background),
                    ),
                  ),
                  SizedBox(
                    height: W * .020,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: W * .424,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: onClickDelete,
                            style:
                                TextButton.styleFrom(padding: EdgeInsets.zero),
                            child: Text(
                              'Delete',
                              style: GoogleFonts.poppins(
                                  fontSize: W * .036,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red),
                            ),
                          ),
                          TextButton(
                            onPressed: onClickEdit,
                            style:
                                TextButton.styleFrom(padding: EdgeInsets.zero),
                            child: Text(
                              'Edit',
                              style: GoogleFonts.poppins(
                                  fontSize: W * .036,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.buttonColor),
                            ),
                          )
                        ],
                      ),
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
      height: W * .284,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(12)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Flexible(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(
              top: W * .030,
            ),
            child: Container(
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: W * .15,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(W * .020)),
                    child: Image.asset(
                      'assets/running.png',
                      fit: BoxFit.fitHeight,
                    ),
                  )),
            ),
          ),
        ),
        Flexible(
          flex: 9,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: W * .010,
              vertical: W * .040,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    heading,
                    style: GoogleFonts.poppins(
                        fontSize: W * .042,
                        fontWeight: FontWeight.w600,
                        color: AppColors.background),
                  ),
                ),
                SizedBox(
                  height: W * .001,
                ),
                Container(
                  child: Text(
                    address,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontSize: W * .032,
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
                        fontSize: W * .032,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            padding: EdgeInsets.only(top: W * .037, left: W * .050),
            child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Icon(
                      Icons.favorite,
                      size: W * .060,
                      color: AppColors.buttonColor,
                    ),
                    SizedBox(
                      height: W * .015,
                    ),
                    Text(
                      'Favorite',
                      style: GoogleFonts.poppins(
                          fontSize: W * .028,
                          fontWeight: FontWeight.w600,
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
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Flexible(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: W * .040, left: W * .040),
              child: Container(
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: W * .13,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(W * .020)),
                      child: Image.asset(
                        pic,
                        fit: BoxFit.fitHeight,
                      ),
                    )),
              ),
            ),
          ),
          Flexible(
            flex: 9,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: W * .020, vertical: W * .050),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style: GoogleFonts.poppins(
                          fontSize: W * .042,
                          fontWeight: FontWeight.w600,
                          color: AppColors.background),
                    ),
                    SizedBox(
                      height: Mq.h * .010,
                    ),
                    Container(
                      child: Text(
                        address,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            fontSize: W * .0318,
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
                            fontSize: W * .0318,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: W * .006,
                    ),
                    SizedBox(
                      width: W * .380,
                      child: Text(
                        price,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            fontSize: W * .0318,
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
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(top: W * .040),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        height: W * .065,
                        width: W * .055,
                        child: Image.asset(
                          'assets/pinlocation.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      SizedBox(
                        height: W * .006,
                      ),
                      Text(
                        'Directions',
                        style: GoogleFonts.poppins(
                            fontSize: W * .030,
                            letterSpacing: -0.8,
                            fontWeight: FontWeight.w500,
                            color: AppColors.buttonColor),
                      )
                    ],
                  )),
            ),
          ),
        ]),
      ),
    );
  }

  static Widget customCard1(BuildContext context, String pic, String heading,
      String address, String rating) {
    double W = Mq.w;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: W * .060),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => SalonDetailsPage(
                          name: heading,
                          rating: rating,
                          location: address,
                          images: const [
                            'assets/salondetailspic.png',
                            'assets/salondetailspic.png',
                            'assets/salondetailspic.png',
                            'assets/salondetailspic.png'
                          ])));
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.buttonColor, width: 0.5),
              borderRadius: BorderRadius.circular(W * .020)),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
              flex: 3,
              child: Container(
                height: Mq.h * .150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(pic))),
                child: Padding(
                  padding: EdgeInsets.all(W * .020),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: W * .055,
                          width: W * .055,
                          child: Image.asset('assets/Group 34359.png'))),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .020, vertical: W * .020),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        heading,
                        style: GoogleFonts.poppins(
                            fontSize: W * .043,
                            fontWeight: FontWeight.w600,
                            color: AppColors.background),
                      ),
                    ),
                    SizedBox(height: Mq.h * .010),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: W * .044,
                            width: W * .044,
                            child: Image.asset('assets/star.png')),
                        SizedBox(
                          width: W * .015,
                        ),
                        Text(
                          rating,
                          style: GoogleFonts.poppins(
                              fontSize: W * .028,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Mq.h * .005,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: W * .044,
                            width: W * .044,
                            child: Image.asset('assets/location.png')),
                        SizedBox(
                          width: W * .015,
                        ),
                        Container(
                          width: W * .400,
                          child: Text(
                            address,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                letterSpacing: -0.1,
                                fontSize: W * .028,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  static Widget customCard(
      String offer, String title, String Subtitle, String image) {
    double W = Mq.w;
    return Container(
      width: W * .490,
      height: Mq.h * .350,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200, width: 1),
          borderRadius: BorderRadius.circular(W * .024)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Mq.h * .100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image))),
            child: Padding(
              padding: EdgeInsets.all(W * .020),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: W * .055,
                  width: W * .055,
                  child: Image.asset('assets/Group 34359.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: W * .010, horizontal: W * .020),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: offer,
                      style: GoogleFonts.poppins(
                          fontSize: W * .034,
                          fontWeight: FontWeight.w600,
                          color: AppColors.buttonColor)),
                  TextSpan(
                      text: title,
                      style: GoogleFonts.poppins(
                          fontSize: W * .034,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: W * .020),
            child: Text(Subtitle,
                style: GoogleFonts.poppins(
                    fontSize: W * .024,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
          ),
        ],
      ),
    );
  }

  static Widget userRatingCard(String name, String pic, int Star, int time) {
    double W = Mq.w;
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 1)),
        child: CircleAvatar(
          radius: Mq.w * .075,
          backgroundImage: AssetImage(pic),
        ),
      ),
      title: Text(
        name,
        style: GoogleFonts.poppins(
            fontSize: W * .040,
            fontWeight: FontWeight.w600,
            color: Colors.black),
      ),
      subtitle: Row(
        children: [
          for (int i = 0; i < 5; i++)
            Container(
              width: W * .045,
              height: W * .045,
              child: Image.asset('assets/star.png',
                  color: i < Star ? AppColors.buttonColor : Colors.grey),
            ),
          SizedBox(
            width: W * .040,
          ),
          Text('${time} min ago',
              style: GoogleFonts.poppins(
                  fontSize: W * .034,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade500)),
        ],
      ),
    );
  }

  static Widget searchCard(
    String heading,
    String sub,
  ) {
    return Container(
      child: Row(
        children: [
          Container(
            height: Mq.w * .055,
            width: Mq.w * .055,
            child: Image.asset('assets/pinlocation.png'),
          ),
          SizedBox(
            width: Mq.w * .040,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: GoogleFonts.poppins(
                    fontSize: Mq.w * .036,
                    fontWeight: FontWeight.w600,
                    color: AppColors.background),
              ),
              Container(
                width: Mq.w * .650,
                child: Text(
                  sub,
                  style: GoogleFonts.poppins(
                      fontSize: Mq.w * .030,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
