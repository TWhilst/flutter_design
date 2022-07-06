import 'package:flutter/material.dart';
import 'package:flutter_design/components/my_bottom_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // In Flutter, the AppBar’s layout mainly comprises three components: leading, title, and actions. leading is placed at the leftmost position of the AppBar; title and actions appear to its right.
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}

