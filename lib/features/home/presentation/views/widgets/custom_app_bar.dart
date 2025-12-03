import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AppAssets.logo,
          height: 35,
          width: 80,
        ),
        // IconButton(
        //   icon: const Icon(
        //     FontAwesomeIcons.magnifyingGlass,
        //   ),
        //   onPressed: () {},
        // ),
      ],
    );
  }
}
