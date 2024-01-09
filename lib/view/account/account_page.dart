import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/services/auth/getx_loginApi.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/bottomsheet/bottom_sheet.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/dialog/custom_dialog.dart';
import 'package:kaichi_user/view/account/aboutUs/aboutus_page.dart';
import 'package:kaichi_user/view/account/editaccount_page.dart';
import 'package:kaichi_user/view/account/favourite_page.dart';
import 'package:kaichi_user/view/account/manage_address.dart';
import 'package:kaichi_user/view_model/getx_bottomNav.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  Navigation _navigation = Get.put(Navigation());

  @override
  void initState() {
    // TODO: implement initState
    _navigation.getLocalData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    double W = Mq.w;
    LoginApi loginApi = Get.put(LoginApi());
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
                  padding: EdgeInsets.symmetric(horizontal: W * .060),
                  child: Obx(
                    () => AppBar(
                      centerTitle: false,
                      backgroundColor: AppColors.background,
                      leading: Container(
                          height: W * .12,
                          width: W * .12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: _navigation.imagePath!.value == ''
                              // ? Image.asset('assets/Avatar.png')
                              ? CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/Avatar.png'),
                                )
                              : CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      _navigation.imagePath!.value))
                          // loginApi.user.data.imagePath),
                          ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // loginApi.user.data.name,
                            // 'John Doe',
                            _navigation.name!.value,
                            style: GoogleFonts.poppins(
                                fontSize: W * .040,
                                fontWeight: FontWeight.w600,
                                color: AppColors.White),
                          ),
                          SizedBox(
                            height: W * .006,
                          ),
                          Text(
                            // loginApi.user.data.email,
                            // 'johndoe@gmail.com',
                            _navigation.email!.value,
                            style: GoogleFonts.poppins(
                                fontSize: W * .028,
                                fontWeight: FontWeight.w500,
                                color: AppColors.White),
                          ),
                        ],
                      ),
                      actions: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const EditProfilePage()));
                          },
                          child: Text(
                            'Edit >',
                            style: GoogleFonts.poppins(
                                fontSize: W * .040,
                                fontWeight: FontWeight.w400,
                                color: AppColors.buttonColor),
                          ),
                        ),
                      ],
                    ),
                  ))
              // Padding(
              //   padding: EdgeInsets.symmetric(
              //       horizontal: W * .060, vertical: W * .020),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         children: [
              //           SizedBox(
              //             height: W * .12,
              //             width: W * .12,
              //             child: Image.asset(
              //               'assets/Profile Image.png',
              //             ),
              //           ),
              //           SizedBox(
              //             width: W * .020,
              //           ),
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'John Doe',
              //                 style: GoogleFonts.poppins(
              //                     fontSize: W * .040,
              //                     fontWeight: FontWeight.w600,
              //                     color: AppColors.White),
              //               ),
              //               SizedBox(
              //                 height: W * .006,
              //               ),
              //               Text(
              //                 'johndoe@gmail.com',
              //                 style: GoogleFonts.poppins(
              //                     fontSize: W * .028,
              //                     fontWeight: FontWeight.w500,
              //                     color: AppColors.White),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       InkWell(
              //         onTap: () {
              //           Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (_) => const EditProfilePage()));
              //         },
              //         child: Text(
              //           'Edit >',
              //           style: GoogleFonts.poppins(
              //               fontSize: W * .040,
              //               fontWeight: FontWeight.w400,
              //               color: AppColors.buttonColor),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: W * .040),
          child: Column(
            children: [
              SizedBox(
                height: W * .020,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ManageAddressPage()));
                },
                leading: SizedBox(
                  height: W * .06,
                  width: W * .06,
                  child: Image.asset(
                    'assets/manageadd.png',
                  ),
                ),
                title: Text(
                  'Manage Address',
                  style: GoogleFonts.poppins(
                    fontSize: W * .036,
                    fontWeight: FontWeight.w600,
                    color: AppColors.background,
                  ),
                ),
                trailing: Image.asset('assets/arrowforward.png'),
              ),
              SizedBox(
                height: W * .020,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const FavouritePage()));
                },
                leading: SizedBox(
                  height: W * .06,
                  width: W * .06,
                  child: Image.asset(
                    'assets/bell.png',
                    scale: 0.8,
                  ),
                ),
                title: Text(
                  'Favourite',
                  style: GoogleFonts.poppins(
                    fontSize: W * .036,
                    fontWeight: FontWeight.w600,
                    color: AppColors.background,
                  ),
                ),
                trailing: Image.asset('assets/arrowforward.png'),
              ),
              SizedBox(
                height: W * .020,
              ),
              ListTile(
                onTap: () => CustomDialog.custdialog(
                    context,
                    'Delete account',
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem odio enim ut nullam tortor, bibendum interdum.',
                    'DELETE ACCOUNT',
                    AppColors.buttonColor),
                leading: Icon(
                  Icons.delete_outline,
                  size: W * .060,
                  color: AppColors.background,
                ),
                title: Text(
                  'Delete account',
                  style: GoogleFonts.poppins(
                    fontSize: W * .036,
                    fontWeight: FontWeight.w600,
                    color: AppColors.background,
                  ),
                ),
                trailing: Image.asset('assets/arrowforward.png'),
              ),
              SizedBox(
                height: W * .080,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Color.fromRGBO(178, 184, 190, 1),
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const AboutUsPage()));
                },
                leading: SizedBox(
                  height: W * .06,
                  width: W * .06,
                  child: Image.asset(
                    'assets/about.png',
                  ),
                ),
                title: Text(
                  'About',
                  style: GoogleFonts.poppins(
                    fontSize: W * .036,
                    fontWeight: FontWeight.w600,
                    color: AppColors.background,
                  ),
                ),
                trailing: Image.asset('assets/arrowforward.png'),
              ),
              SizedBox(
                height: W * .020,
              ),
              ListTile(
                onTap: () => CustomBottomSheet.bottomsheet(
                    context,
                    'Logout?',
                    'Are you sure want to logout from the app?',
                    'LOGOUT',
                    AppColors.buttonColor),
                leading: SizedBox(
                  height: W * .06,
                  width: W * .06,
                  child: Image.asset(
                    'assets/logout.png',
                  ),
                ),
                title: Text(
                  'Logout',
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
      ),
    );
  }
}
