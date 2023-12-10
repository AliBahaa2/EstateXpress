import 'package:carousel_slider/carousel_slider.dart';
import 'package:express/components/Category.dart';
import 'package:express/widgets/Drawer.dart';
import 'package:express/components/customAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NavBarHome extends StatefulWidget {
  const NavBarHome({super.key});

  @override
  State<NavBarHome> createState() => _NavBarHomeState();
}

class _NavBarHomeState extends State<NavBarHome> {
  final urlImages = [
    'lib/assets/images/CarouselSlider/Slider1.png',
    'lib/assets/images/CarouselSlider/Slider2.png',
    'lib/assets/images/CarouselSlider/Slider3.jpg',
    'lib/assets/images/CarouselSlider/Slider4.png',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(135, 226, 226, 226),
      drawer: const MyDrawer(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            const CustomAppBar(),
            Column(
              children: [
                SizedBox(
                  height: 1.h,
                ),
                //الصور الي تتنقل
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 22.h,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    onPageChanged: (index, reason) => setState(
                      () => activeIndex = index,
                    ),
                  ),
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                ),
                SizedBox(
                  height: 1.h,
                ),
                //النقاط الي تتحرك وي الصورة
                buildIndicator(),
                const Divider(),
                SizedBox(
                  height: 0.5.h,
                ),
                //فئات الاشياء الي يختارها المستخدم
                const Categories(),
                SizedBox(
                  height: 1.h,
                ),             
              ],
            ),
          ],
        ),
      ),
    );
  }

  //الفانكشن الي تعرض انتقال الصور
  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 0.1.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            height: double.infinity,
            width: double.infinity,
            urlImage,
            fit: BoxFit.fill,
          ),
        ),
      );
  //الازرار الي يتحركن وي انتقال الصور
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: const ScaleEffect(
          dotHeight: 10,
          dotWidth: 10,
        ),
      );
}
