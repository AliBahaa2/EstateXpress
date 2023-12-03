import 'package:express/components/material_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../components/Category.dart';

class NavBarSetting extends StatefulWidget {
  const NavBarSetting({super.key});

  @override
  State<NavBarSetting> createState() => _NavBarSettingState();
}

class _NavBarSettingState extends State<NavBarSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                height: 12.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 7.w, right: 7.w, top: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'اضافة عقار',
                          style: TextStyle(
                            fontFamily: 'cairo',
                            fontSize: 25.dp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(
                    Icons.category,
                    color: Colors.blue,
                  ),
                  Text(
                    'اختر الفئة التي تريد اضافتها',
                    style: TextStyle(
                        fontSize: 20.dp,
                        fontFamily: 'tajawal',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Categories(),
              const Divider(),
              Row(
                children: [
                  const Icon(
                    Icons.photo_size_select_actual_rounded,
                    color: Colors.blue,
                  ),
                  Text(
                    'اضافة صورة',
                    style: TextStyle(
                        fontSize: 20.dp,
                        fontFamily: 'tajawal',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 0.5.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'اضافة صورة',
                  style: TextStyle(fontFamily: 'tajawal', fontSize: 20.dp),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.blue,
                  ),
                  Text(
                    'الموقع',
                    style: TextStyle(
                      fontSize: 20.dp,
                      fontFamily: 'tajawal',
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                textDirection: TextDirection.rtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'المحافظة',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 131, 167, 185),
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Color.fromARGB(28, 255, 255, 255),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                textDirection: TextDirection.rtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'المنطقة',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 131, 167, 185),
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Color.fromARGB(28, 255, 255, 255),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                textDirection: TextDirection.rtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'رقم الدار / القطعة',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 131, 167, 185),
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Color.fromARGB(28, 255, 255, 255),
                  filled: true,
                ),
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(
                    Icons.monetization_on_sharp,
                    color: Colors.blue,
                  ),
                  Text(
                    'السعر',
                    style: TextStyle(
                      fontSize: 20.dp,
                      fontFamily: 'tajawal',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                textDirection: TextDirection.rtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'السعر',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 131, 167, 185),
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Color.fromARGB(28, 255, 255, 255),
                  filled: true,
                ),
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(
                    Icons.assignment_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                    'التفاصيل',
                    style: TextStyle(
                      fontSize: 20.dp,
                      fontFamily: 'tajawal',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                textDirection: TextDirection.rtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'التفاصيل',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 131, 167, 185),
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Color.fromARGB(28, 255, 255, 255),
                  filled: true,
                ),
              ),
              const Divider(),
              SizedBox(height: 3.h,),
              Center(
                child: ElevatedButton(
                  
                  onPressed: () {},
                  child: SizedBox(
                    width: 40.w,
                    height: 4.h,
                    child: Center(
                      child: Text(
                        'اضافة',
                        style: TextStyle(fontFamily: 'tajawal', fontSize: 20.dp),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
