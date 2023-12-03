import 'package:express/components/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedCategoryIndex = 0;
  List<String> categoryList = [
    'البيوت',
    'الشقق',
    'قطع الاراضي',
    'الاجارات',
  ];
  Widget _buildCategory(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(left: 2.w),
        child: Container(
          width: 25.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: selectedCategoryIndex == index
                ? MyColors().darkBlue
                : MyColors().homeColor
          ),
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                color: selectedCategoryIndex == index
                    ? Colors.white
                    : Colors.black,
                fontFamily: 'cairo',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
      child: SizedBox(
        height: 4.h,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return _buildCategory(context, index);
          },
        ),
      ),
    );
  }
}
