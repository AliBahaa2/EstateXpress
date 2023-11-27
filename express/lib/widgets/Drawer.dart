import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
        const ListTile(
          iconColor: Colors.grey,
          textColor: Colors.grey,
          title: Text('الاشعارات'),
          leading: Icon(Icons.notifications_none),
          // onTap: (){},
        ),
        //الاشعارات
        GestureDetector(
          child: const ListTile(
            iconColor: Colors.grey,
            textColor: Colors.grey,
            title: Text('مخطط الاراضي'),
            leading: Icon(Icons.map_rounded),
            // onTap: (){},
          ),
        ),
        const ListTile(
          iconColor: Colors.grey,
          textColor: Colors.grey,
          title: Text('دليل الاسعار'),
          leading: Icon(Icons.house_siding_sharp),
          // onTap: (){},
        ),
        const ListTile(
          iconColor: Colors.grey,
          textColor: Colors.grey,
          title: Text('الاعدادات'),
          leading: Icon(Icons.settings),
          // onTap: (){},
        ),
        const ListTile(
          iconColor: Colors.grey,
          textColor: Colors.grey,
          title: Text('اذهب الى العقار'),
          leading: Icon(Icons.numbers_rounded),
          // onTap: (){},
        ),
        const Divider(
          indent: 30,
          color: Colors.grey,
          endIndent: 30,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.phone,
              color: Colors.grey,
            ),
            Text(
              'الاتصال',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SocalIcon(
              iconsrc: 'lib/assets/images/facebookhhh.png',
            ),
            SocalIcon(
              iconsrc: 'lib/assets/images/instttttt.png',
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
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                size: 35.dp,
              ),
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("login", (route) => false);
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Text(
                'تسجيل الخروج',
                style: TextStyle(
                    fontFamily: 'tajawal',
                    fontSize: 20.dp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    ));
  }
}

class SocalIcon extends StatelessWidget {
  final String iconsrc;
  // final Function press;
  const SocalIcon({required this.iconsrc});
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
