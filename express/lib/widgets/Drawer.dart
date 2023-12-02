import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:url_launcher/url_launcher.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
          child: Padding(
        padding: EdgeInsets.only(right: 2.w),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            //اللوكو وزر الاغلاق
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Drawer اللوكو الموجود بالـ
                Image(
                  image: const AssetImage(
                    'lib/assets/images/splashLogo.png',
                  ),
                  height: 70.dp,
                ),
                const Spacer(),
                //Drawer الزر الي يغلق الـ
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            //الاشعارات
            ListTile(
              iconColor: Colors.grey,
              textColor: Colors.grey,
              title: const Text(
                'الاشعارات',
                style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'tajawal'),
              ),
              leading: const Icon(Icons.notifications_none),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("notication");
              },
            ),
            //مخطط الاراضي
            ListTile(
              iconColor: Colors.grey,
              textColor: Colors.grey,
              title: const Text(
                'مخطط الاراضي',
                style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'tajawal'),
              ),
              leading:const Icon(Icons.map_rounded),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("LandMaps");
              },
            ),
           //معلومات المستخدم
            const ListTile(
              iconColor: Colors.grey,
              textColor: Colors.grey,
              title: Text(
                'معلومات المستخدم',
                style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'tajawal'),
              ),
              leading: Icon(Icons.supervised_user_circle_sharp),
              // onTap: (){},
            ),
          //حول البرنامج
             ListTile(
              iconColor: Colors.grey,
              textColor: Colors.grey,
              title:const Text(
                'حول البرنامج',
                style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'tajawal'),
              ),
              leading:const Icon(Icons.info_outline),
               onTap: (){
                Navigator.of(context).pushReplacementNamed("About");
               },
            ),
          //تسجيل الخروج
            ListTile(
              iconColor: Colors.grey,
              textColor: Colors.grey,
              title:const Text(
                'تسجيل الخروج',
                style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'tajawal'),
              ),
              leading:const Icon(
                Icons.exit_to_app,
              ),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("login", (route) => false);
              },
            ),
            const Divider(
              indent: 30,
              color: Colors.grey,
              endIndent: 30,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: ()async{
                     final url = 'tel:+9647717978031';
                     if(await canLaunchUrl(Uri.parse(url))){
                      await launchUrl(Uri.parse(url));
                     }
                },
                  child:const Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  'الاتصال',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
               GestureDetector(
                onTap: ()async{
                     final url = 'https://web.facebook.com/ali.liraqi.984';
                     if(await canLaunchUrl(Uri.parse(url))){
                      await launchUrl(Uri.parse(url));
                     }
                },
                 child: const SocalIcon(
                    iconsrc: 'lib/assets/images/facebookhhh.png',
                  ),
               ),
               GestureDetector(
                onTap: ()async{
                     final url = 'https://www.instagram.com/it_ali30/';
                     if(await canLaunchUrl(Uri.parse(url))){
                      await launchUrl(Uri.parse(url));
                     }
                },
                 child: const SocalIcon(
                    iconsrc: 'lib/assets/images/instttttt.png',
                  ),
               ),
              ],
            ),
            Divider(
              height: 4.h,
              indent: 30,
              color: Colors.grey,
              endIndent: 30,
            ),
            const Center(
              child: Text(
                'version 0.1',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class SocalIcon extends StatelessWidget {
  final String iconsrc;
  // final Function press;
  const SocalIcon({super.key, required this.iconsrc});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: press(),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(),
          child: Image.asset(
            iconsrc,
            width: 5.w,
            height: 5.h,
          )),
    );
  }
}
