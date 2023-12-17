import 'package:kaichi_user/style/assets_links/assets_link.dart';

class Onboardings {
  String details;
  String bgImage;
  Onboardings(this.bgImage, this.details);
}

List<Onboardings> content = [
  Onboardings('assets/onbording1.png',
      'Schedule your Appointment with the best Hair Stylist in your Town.'),
  Onboardings('assets/onbording2.png',
      'Schedule the Appointment in the best Salon for your Kids.'),
  Onboardings('assets/onbording3.png',
      'Book yourself a massage therapist to release all your stress.'),
  Onboardings('assets/onbording4.png',
      'Search for the best parlournear you to fulfil all your beauty needs')
];
