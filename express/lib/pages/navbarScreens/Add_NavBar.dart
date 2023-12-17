import 'dart:io';

import 'package:express/pages/homeScreen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import '../../components/Category.dart';
import 'package:path/path.dart';

class NavBarSetting extends StatefulWidget {
  const NavBarSetting({super.key});

  @override
  State<NavBarSetting> createState() => _NavBarSettingState();
}

class _NavBarSettingState extends State<NavBarSetting> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  final cityController = TextEditingController();
  final city2Controller = TextEditingController();
  final city3Controller = TextEditingController();

  final priceController = TextEditingController();
  final detailsController = TextEditingController();
  String dropdownvalue = 'بيت';

  CollectionReference estatedb =
      FirebaseFirestore.instance.collection('estatedb');
  addEstate(context) async {
    if (formState.currentState!.validate()) {
      try {
        DocumentReference response = await estatedb.add({
          'city': cityController.text,
          'city2': city2Controller.text,
          'city3': city3Controller.text,
          'price': priceController.text,
          'deteils': detailsController.text,
          'type': dropdownvalue ?? "none",
          'url': url ?? "none",
        });
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
      } catch (e) {
        print("error $e");
      }
    }
  }

  File? file;
  String? url;
  getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagegallary =
        await picker.pickImage(source: ImageSource.camera);
    if (imagegallary != null) {
      file = File(imagegallary!.path);
      var imagename = basename(imagegallary!.path);
      var refstorge = FirebaseStorage.instance.ref("images $imagename");
      await refstorge.putFile(file!);
      url = await refstorge.getDownloadURL();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formState,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //نص اضافة عقار
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
                    child: Center(
                      child: Text(
                        'اضافة عقار',
                        style: TextStyle(
                          fontFamily: 'cairo',
                          fontSize: 25.dp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(),
                //اختر الفئى التي تريد اضافتها
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
                // const Categories(),
                SizedBox(height: 5),
                Container(
                  height: 38,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 2, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8)),
                  child: DropdownButton(
                      value: dropdownvalue,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      iconSize: 24,
                      elevation: 50,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.dp,
                          fontFamily: 'tajawal',
                          fontWeight: FontWeight.bold),
                      underline: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        //  height: 2,
                        // color: Colors.blue,
                      ),
                      items: <String>['بيت', 'شقه', 'قطعة أرض', 'ايجار']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalue = newvalue!;
                        });
                      }),
                ),

                const Divider(),
                //اضافة صورة
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
                //زر اضافة صورة
                ElevatedButton(
                  onPressed: () async {
                    await getImage();
                  },
                  child: Text(
                    'اضافة صورة',
                    style: TextStyle(fontFamily: 'tajawal', fontSize: 20.dp),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                const Divider(),
                //الموقع
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
                //المحافظة
                TextFormField(
                  controller: cityController,
                  validator: (val) {
                    if (val == "") {
                      return "can not be empty";
                    }
                  },
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
                //المنطقة
                TextFormField(
                  controller: city2Controller,
                  validator: (val) {
                    if (val == "") {
                      return "can not be empty";
                    }
                  },
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
                //رقم الدار
                TextFormField(
                  controller: city3Controller,
                  validator: (val) {
                    if (val == "") {
                      return "can not be empty";
                    }
                  },
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
                //السعر
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
                //ادخال السعر
                TextFormField(
                  controller: priceController,
                  validator: (val) {
                    if (val == "") {
                      return "can not be empty";
                    }
                  },
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
                //التفاصيل
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
                //ادخال التفاصيل
                TextFormField(
                  controller: detailsController,
                  validator: (val) {
                    if (val == "") {
                      return "can not be empty";
                    }
                  },
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
                SizedBox(
                  height: 3.h,
                ),
                //زر الاضافة
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      addEstate(context);
                    },
                    child: SizedBox(
                      width: 40.w,
                      height: 4.h,
                      child: Center(
                        child: Text(
                          'اضافة',
                          style:
                              TextStyle(fontFamily: 'tajawal', fontSize: 20.dp),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
