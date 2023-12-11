import 'package:kaichi_user/style/assets_links/assets_link.dart';

class Onboardings {
  String details;
  String bgImage;
  Onboardings(this.bgImage, this.details);
}

List<Onboardings> content = [
  Onboardings(Links.onboardImage2,
      'Schedule your Appointment with the best Hair Stylist in your Town.'),
  Onboardings(Links.onboardImage3,
      'Schedule the Appointment in the best Salon for your Kids.'),
  Onboardings(Links.onboardImage1,
      'Book yourself a massage therapist to release all your stress.'),
  Onboardings(Links.onboardImage4,
      'Search for the best parlournear you to fulfil all your beauty needs')
];
