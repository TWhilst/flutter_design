import"package:flutter/material.dart";
import 'package:flutter_design/constants.dart';
import 'package:flutter_svg/svg.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key, required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding/2),
      margin: EdgeInsets.symmetric(vertical: size.height*0.03),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22)
          ),
          const BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
