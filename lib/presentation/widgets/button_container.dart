import 'package:flutter/material.dart';
import '../../utilities/constants/app_styles.dart';

class ContainerWidget extends StatelessWidget {
  String text;
  ContainerWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blueColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyles.styleForSubtitle,
        ),
      ),
      width: MediaQuery.of(context).size.width - 18,
      padding: const EdgeInsets.symmetric(vertical: 18),
    );
  }
}
