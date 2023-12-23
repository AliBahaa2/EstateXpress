import 'package:express/models/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Cleaning extends StatelessWidget {
  const Cleaning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'خدمة التنظيف',
          style: TextStyle(fontFamily: 'tajawal', fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: ListView(
          children: [
            SizedBox(
              height: 5.h,
            ),
           const Divider(
              color: Color.fromARGB(255, 84, 84, 84),
            ),
            const ServicesDetails(
              image:
                  'https://homele.com/storage/app/uploads/public/46c/f2b/1d1/46cf2b1d16b391c1439eda78cf91192b.jpg',
              title: 'شركة اكس كلينر',
              type: 'خدمات التنظيف',
              phone: 'tel:+7505390506',
            ),
           const Divider(
              color: Color.fromARGB(255, 84, 84, 84),
            ),
            const ServicesDetails(
              image:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpjywW6BCPsPaZVDe3I647JQBxutoG3d9fLtOjFH-IZYYiIVPZaYdryMPiUlCRBM6JF24&usqp=CAU',
              title: 'شركة ترو شاين',
              type: 'خدمات التنظيف',
              phone: 'tel:+9647717978031',
            ),
           const Divider(
              color: Color.fromARGB(255, 84, 84, 84),
            ),
            const ServicesDetails(
              image:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBgmzC5szQ_C8PmalIgEVtHDfUANOan2i1ioSiczF8WejA8ySD4kUo9bO3h2nTfbFn0o8&usqp=CAU',
              title: 'شركة كامران ',
              type: 'خدمات التنظيف',
              phone: 'tel:+9647717978031',
            ),
           const Divider(
              color: Color.fromARGB(255, 84, 84, 84),
            ),
          ],
        ),
      ),
    );
  }
}
