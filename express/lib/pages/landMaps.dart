import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class LandMaps extends StatefulWidget {
  const LandMaps({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LandMaps createState() => _LandMaps();
}

class _LandMaps extends State<LandMaps> {
  @override
  void initState() {
    super.initState();
  }

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
          'مخطط الاراضي',
          style: TextStyle(fontFamily: 'Tajawal', color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.only(left: 8.w,right: 8.w, top:5.h,bottom: 5.h),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
              color: const Color.fromARGB(64, 158, 158, 158)
            ),
            child: Column(

              children: [
                 SizedBox(
                  height: 4.h,
                ),
                 Text(' اختر المخطط الذي تريد عرضه',style: TextStyle(fontFamily: 'tajawal',fontSize: 20.dp,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 4.h,
                ),
                const Divider(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("Land2381");
                  },
                  child: Text(
                    'حي الاساتذة مقاطعة 2381',
                    style: TextStyle(
                      fontSize: 15.dp,
                      fontFamily: 'tajawal',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("Land651");
                  },
          
                  child: Text(
                    'مقاطعة 651 الأسمدة',
                    style: TextStyle(
                      fontSize: 15.dp,
                      fontFamily: 'tajawal',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("Land2356");
                  },
                  child: Text(
                    'مقاطعة 2356 ',
                    style: TextStyle(
                      fontSize: 15.dp,
                      fontFamily: 'tajawal',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("Land2382_2");
                  },
                  child: Text(
                    'خريطة 2382 حي الاساتذة الثانية ',
                    style: TextStyle(
                      fontSize: 15.dp,
                      fontFamily: 'tajawal',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("Land2373");
                  },
                  child: Text(
                    'خريطة 2373 البلدية ',
                    style: TextStyle(
                        fontSize: 15.dp,
                        fontFamily: 'tajawal',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("Landelec_2_1");
                  },
                  child: Text(
                    'افرازات الكهرباء الاولى والثانية ',
                    style: TextStyle(
                        fontSize: 15.dp,
                        fontFamily: 'tajawal',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
