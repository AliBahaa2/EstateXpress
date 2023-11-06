import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image(
              image: AssetImage(
                'lib/assets/images/splashLogo.png',
              ),
              height: 90,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.close,
              ),
            ),

            //   // weight: ,
            // ),
            //
            //
          ],
        ),
        SizedBox(
          height: 5.h,
        ),

        ListTile(
          iconColor: Colors.grey,
          textColor: Colors.grey,
          title: Text('الاشعارات'),
          leading: Icon(Icons.notifications_none),
          // onTap: (){},
        ),
        ListTile(
          iconColor: Colors.grey,
          textColor: Colors.grey,
          title: Text('مخطط الاراضي'),
          leading: Icon(Icons.map_rounded),
          // onTap: (){},
        ),
        ListTile(
          iconColor: Colors.grey,
          textColor: Colors.grey,
          title: Text('دليل الاسعار'),
          leading: Icon(Icons.house_siding_sharp),
          // onTap: (){},
        ),
        ListTile(
          iconColor: Colors.grey,
          textColor: Colors.grey,
          title: Text('الاعدادات'),
          leading: Icon(Icons.settings),
          // onTap: (){},
        ),
        ListTile(
          iconColor: Colors.grey,
          textColor: Colors.grey,
          title: Text('اذهب الى العقار'),
          leading: Icon(Icons.numbers_rounded),
          // onTap: (){},
        ),
        Divider(
          indent: 30,
          color: Colors.grey,
          endIndent: 30,
        ),
        // SizedBox(),

        Row(
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
          height: 30,
          indent: 30,
          color: Colors.grey,
          endIndent: 30,
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Center(
          child: Text(
            'version 0.1',
            style: TextStyle(color: Colors.grey),
          ),
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
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              
              ),
          child: Image.asset(
            iconsrc,
            width: 40.w,
            height: 40.h,
          )),
    );
  }
}
