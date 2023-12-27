import 'package:get/get.dart';
import 'package:kaichi_user/model/selecteditem_model.dart';

class SelectedItem extends GetxController {
  RxInt price = 0.obs;

  RxList<ItemList> items = [
    ItemList('Haircut & Shave', 'assets/Rectangle 3.png', false, 40, 40),
    ItemList('Haircut & Beard Grooming', 'assets/Rectangle 3 (1).png', false,
        40, 40),
    ItemList('Haircut & Anti-Pollution Cleanup', 'assets/Rectangle 3 (2).png',
        false, 40, 40),
    ItemList('Haircut & Shave', 'assets/Rectangle 3.png', false, 40, 40),
    ItemList('Haircut & Beard Grooming', 'assets/Rectangle 3 (1).png', false,
        40, 40),
    ItemList('Haircut & Anti-Pollution Cleanup', 'assets/Rectangle 3 (2).png',
        false, 40, 40),
  ].obs;

  RxList item1 = [].obs;
}
