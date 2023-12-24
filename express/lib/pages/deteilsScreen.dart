import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class DeteilsScreen extends StatefulWidget {
  final data;
  const DeteilsScreen({super.key, this.data});

  @override
  State<DeteilsScreen> createState() => _DeteilsScreenState();
}

class _DeteilsScreenState extends State<DeteilsScreen> {
  void _launchURL(url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  var data;

  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('estatedb').get();
    data.addAll(querySnapshot.docs);
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'تفاصيل المنشور',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'tajawal',
              color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.blue,
          icon: Icon(Icons.keyboard_backspace_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.only(top: 5.h, right: 3.w, left: 3.w),
          child: Container(
            height: 80.h,
            margin: const EdgeInsets.only(
              top: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromARGB(129, 217, 217, 217),
            ),
            child: Column(children: [
              //الصورة
              Container(
                height: 35.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.data['url'] ?? " "),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  border: const Border(
                    bottom: BorderSide(width: 2),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        //العنوان
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                          ),
                          height: 30,
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 5, bottom: 5),
                          child: Text(
                            "${widget.data['city'] ?? " "} / ${widget.data['city2'] ?? " "} / ${widget.data['city3'] ?? " "}",
                            style: const TextStyle(
                                fontFamily: 'tajawal',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Spacer(),
                        //السعر
                        Container(
                           margin:const EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                          ),
                          height: 30,
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 5, bottom: 5),
                          child: Text(
                            widget.data['price'] ?? " ",
                            style: const TextStyle(
                                fontFamily: 'tajawal',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    //الوصف
                    Container(
                      height: 30,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, top: 5, bottom: 5),
                      child: Text(
                        widget.data['deteils'] ?? " ",
                        style: const TextStyle(
                            fontFamily: 'tajawal',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              //اتصال
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'اتصال',
                      style: TextStyle(
                          fontFamily: 'tajawal',
                          fontSize: 20,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
