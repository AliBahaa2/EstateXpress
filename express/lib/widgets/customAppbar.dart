import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:express/components/MyColors.dart';

class CustomAppBar extends StatelessWidget {
  @override
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //AppBar يحتوي على الايقونتين الي بالـ
    return SizedBox(
      height: 14.h,
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
            const Spacer(),
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
