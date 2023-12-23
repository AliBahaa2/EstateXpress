import 'package:express/models/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Curtains extends StatelessWidget {
  const Curtains({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'خدمات الستائر',
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
                  'https://scontent.fbsr1-4.fna.fbcdn.net/v/t39.30808-6/365554667_680419037444383_642334461611048047_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeG_X3mljTiAv8iNqnnJDQS3RcvHEPcsUyFFy8cQ9yxTIZP7YfrfZfvYUzfjVCJuYOrxob5o5krMoiqcpfWqwrnA&_nc_ohc=6PhW-WVlKVcAX96t2y5&_nc_ht=scontent.fbsr1-4.fna&oh=00_AfBuj9Fiw8Q9YWKO4_sdwalmXJvGOfgMooIqBrvevGkLjA&oe=658ABDB1',
              title: 'شركة سراي بردة',
              type: 'خدمات التنظيف',
              phone: 'tel:+6947504496570',
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
