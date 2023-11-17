import 'package:express/pages/navbarScreens/Favoret_NavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../pages/navbarScreens/Home_NavBar.dart';
import '../pages/navbarScreens/Search_NavBar.dart';
import '../pages/navbarScreens/Add_NavBar.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  //navBar لست تحتوي على الشاشات داخل الـ
  static const List<Widget> _widgetOptions = <Widget>[
    NavBarHome(),
    NavBarFavoret(),
    NavBarSearch(),
    NavBarSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    //هاي الوجت استخدمتها حتى اخلي محتويات الشاشة باللغة العربية
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 3.w,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'الرئيسية',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'المفضلة',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'البحث',
                ),
                GButton(
                  icon: Icons.add,
                  text: 'الاضافة',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}


