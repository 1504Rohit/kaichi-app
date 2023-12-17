import 'package:flutter/material.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';

class Running {
  static Widget running() {
    double W = Mq.w;
    return Container(
      child: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          CustomCard.customCard2(
              'assets/running.png',
              'Woodlands Hills Salon',
              'Keira throughway • 5.0 Kms',
              'Haircut x 1 + Shave x 1',
              '8 Mar 2021 • \$102'),
          SizedBox(
            height: W * .040,
          ),
          CustomCard.customCard2(
              'assets/running.png',
              'Woodlands Hills Salon',
              'Keira throughway • 5.0 Kms',
              'Haircut x 1 + Shave x 1',
              '8 Mar 2021 • \$102'),
          SizedBox(
            height: W * .040,
          ),
          CustomCard.customCard2(
              'assets/running.png',
              'Woodlands Hills Salon',
              'Keira throughway • 5.0 Kms',
              'Haircut x 1 + Shave x 1',
              '8 Mar 2021 • \$102'),
          SizedBox(
            height: W * .040,
          ),
          CustomCard.customCard2(
              'assets/running.png',
              'Woodlands Hills Salon',
              'Keira throughway • 5.0 Kms',
              'Haircut x 1 + Shave x 1',
              '8 Mar 2021 • \$102'),
          SizedBox(
            height: W * .040,
          ),
          CustomCard.customCard2(
              'assets/running.png',
              'Woodlands Hills Salon',
              'Keira throughway • 5.0 Kms',
              'Haircut x 1 + Shave x 1',
              '8 Mar 2021 • \$102'),
          SizedBox(
            height: W * .040,
          ),
          CustomCard.customCard2(
              'assets/running.png',
              'Woodlands Hills Salon',
              'Keira throughway • 5.0 Kms',
              'Haircut x 1 + Shave x 1',
              '8 Mar 2021 • \$102'),
          SizedBox(
            height: W * .040,
          ),
        ],
      ),
    );
  }
}
