import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.blue,
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.of(context).pushNamed("homepage");
          },
        ),
        title: const Text(
          'حول البرنامج',
          style: TextStyle(fontFamily: 'Tajawal', color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(64, 158, 158, 158)),
              child: Padding(
                padding:  EdgeInsets.only(top: 5.h,left: 1.w,right: 1.w),
                child: Text(
                  'Estate Xpress هو برنامج يختص بالممتلكات العقارية مثل(قطع الاراضي,البيوت,الشقق)وغيرها, حيث يتيح التطبيق للمستخدمين تصفح مجموعة كبيرة من العقارات المتاحة في منطقتهم المفضلة ويوفر هذا التطبيق معلومات مفصلة عن كل عقار بما في ذلك الصور والمواصفات وتفاصيل الاتصال بالمالك او الوكيل ويمكن للمستخدمين حفظ عقاراتهم المفضلة وتصفحها في وقت لاحق, ويتضمن التطبيق خدمة الاشعارات لتنبيه المستخدمين حول العقارات الجديدة او العروض الخاصة.. كما يسهل عملية التواصل بين المشترين والبائعين او وكلاء العقارات كما يتميز هذا التطبيق بتصميم بسيط وسهل الاستخدام مما يجعل تجربة البحث عن العقارات ممتعة وسلسة.' ,
                  style: TextStyle(fontSize: 15.dp, fontWeight: FontWeight.bold, fontFamily: 'tajawal',),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
