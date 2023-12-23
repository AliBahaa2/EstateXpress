import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ServicesDetails extends StatelessWidget {
  final String image;
  final String title;
  final String type;
  final String phone;
  const ServicesDetails(
      {super.key,
      required this.image,
      required this.title,
      required this.type,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
              width: 20.w,
              child: Image(image: NetworkImage(image)),
            ),
            SizedBox(
              width: 2.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'tajawal',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  type,
                  style: const TextStyle(fontFamily: 'tajawal', fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              width: 5.w,
            ),
            GestureDetector(
              onTap: () async {
                final url = phone;
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                }
              },
              child: Container(
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
                child:const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone,color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('اتصال',style: TextStyle(fontFamily: 'tajawal',fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
