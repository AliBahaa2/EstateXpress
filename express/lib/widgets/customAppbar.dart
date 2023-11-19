import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:express/components/MyColors.dart';

class CustomAppBar extends StatefulWidget {
  @override
  const CustomAppBar({
    super.key,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //AppBar يحتوي على الايقونتين الي بالـ
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      height: 12.h,
      child: Padding(
        padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 4.h),
        child: Row(
          children: [
            //Drawer ايقونة الـ
            Container(
              decoration: BoxDecoration(
                color: MyColors().homeColor,
                border: Border.all(color: Colors.black.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Builder(
                builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.align_horizontal_right),
                  );
                },
              ),
            ),
            //ايقونة البحث
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: SizedBox(
                height: 6.h,
                width: 48.w,
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),
                    hintText: 'بحث',
                    hintStyle: const TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            //Maps ايقونة الـ
            Container(
              decoration: BoxDecoration(
                color: MyColors().homeColor,
                border: Border.all(color: Colors.black.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.map_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
