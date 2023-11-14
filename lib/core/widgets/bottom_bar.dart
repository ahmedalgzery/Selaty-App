import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/utils/assets.dart';
import 'package:selaty/features/category/presentation/views/category_view.dart';
import 'package:selaty/features/home/presentation/views/home_view.dart';
import 'package:selaty/features/profile/presentation/views/profile_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  static const String kBottomBar = '/bottomBar';

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 2;
  double bottomBarWidth = 42.w;
  double bottomBarBorderWidth = 5.w;
  List<Widget> pages = [
    const Text('sdf'),
    const CategoryView(),
    const HomeView(),
    const Text('sdf'),
    const ProfileView(),
  ];

  // Update the current page index
  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        iconSize: 20.r,

        onTap: updatePage, // Handle navigation when a tab is tapped
        elevation: 2,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.heart,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 25.r,
              backgroundColor: kPrimaryColor.withOpacity(.9),
              child: Image.asset(AssetesData.logo),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bell,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: '',
          ),
        ],
      ),
    );
  }
}
