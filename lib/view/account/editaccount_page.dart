import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kaichi_user/services/auth/getx_loginApi.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';
import 'package:kaichi_user/view_model/getx_bottomNav.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String _imagepath = '';
  final ImagePicker imgpicker = ImagePicker();
  LoginApi loginApi = Get.put(LoginApi());
  Future getImage() async {
    try {
      var pickedFile = await imgpicker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imagepath = pickedFile.path;
        });
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking image.");
    }
  }

  Navigation _navigation = Get.put(Navigation());

  @override
  void initState() {
    // TODO: implement initState
    _navigation.getLocalData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
          ),
          toolbarHeight: W * .198,
          centerTitle: true,
          backgroundColor: AppColors.background,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: AppColors.White,
          ),
          title: Text(
            'My Profile',
            style: GoogleFonts.poppins(
                fontSize: W * .048,
                fontWeight: FontWeight.w600,
                color: AppColors.White),
          ),
        ),
        body: Obx(
          () => Padding(
            padding:
                EdgeInsets.symmetric(horizontal: W * .060, vertical: W * .040),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: W * .240,
                      width: W * .240,
                      child: Stack(
                        children: [
                          Container(
                            height: W * .240,
                            width: W * .240,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: AppColors.buttonColor, width: 1),
                            ),
                            child: _imagepath == ''
                                ? _navigation.imagePath!.value == ''
                                    // ? Image.asset('assets/Avatar.png')
                                    ? CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/Avatar.png'),
                                      )
                                    : CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            _navigation.imagePath!.value))
                                : CircleAvatar(
                                    backgroundImage:
                                        FileImage(File(_imagepath)),
                                  ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                              onTap: () {
                                getImage();
                                print(_imagepath);
                              },
                              child: Container(
                                height: W * .064,
                                width: W * .064,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      filterQuality: FilterQuality.high,
                                      image: AssetImage('assets/edit.png')),
                                  color: AppColors.buttonColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: AppColors.White, width: 3),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: W * .080,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Personal Information',
                        style: GoogleFonts.poppins(
                            fontSize: W * .042,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    CustomCard.customCard3(
                        'Full Name', _navigation.name!.value),
                    SizedBox(
                      height: W * .040,
                    ),
                    CustomCard.customCard3(
                        'Email Id', _navigation.email!.value),
                    SizedBox(
                      height: W * .040,
                    ),
                    CustomCard.customCard3(
                        'Phone Number', _navigation.phone!.value)
                  ],
                ),
                StyleButton.loginLike(context, () {}, 'EDIT PROFILE',
                    AppColors.buttonColor, false)
              ],
            ),
          ),
        ));
  }
}
