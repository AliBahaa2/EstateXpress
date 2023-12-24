import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:express/widgets/favbotton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarFavoret extends StatefulWidget {
  const NavBarFavoret({super.key});

  @override
  State<NavBarFavoret> createState() => _NavBarFavoretState();
}

class _NavBarFavoretState extends State<NavBarFavoret>
    with SingleTickerProviderStateMixin {
  List favoritePlaces = [];
  bool isExpanded = true;
  Color _colorHeart = Colors.red;
  List data = [];

  getData() async {
    CollectionReference estate =
        FirebaseFirestore.instance.collection("estatedb");
    QuerySnapshot querySnapshot =
        await estate.where("fav", isEqualTo: true).get();
    querySnapshot.docs.forEach((element) {
      data.add(element);
    });
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
      body: StreamBuilder<Object>(
          stream: null,
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: data.length,
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("DeteilsScreen");
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 15,
                      ),
                      decoration: BoxDecoration(
                        //  border: Border.all(width: 1.3),
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(129, 217, 217, 217),
                      ),
                      child: Column(
                        children: [
                          //الصورة
                          Container(
                            height: 35.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(data[index]['url'] ?? " "),
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
                            margin: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    //العنوان
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.only(
                                          right: 20,
                                          left: 20,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        "${data[index]['city'] ?? " "} / ${data[index]['city2'] ?? " "} / ${data[index]['city3'] ?? " "}",
                                        style: const TextStyle(
                                            fontFamily: 'tajawal',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Spacer(),
                                    //السعر
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.only(
                                          right: 20,
                                          left: 20,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        data[index]['price'] ?? " ",
                                        style: const TextStyle(
                                            fontFamily: 'tajawal',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 5, right: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white60),
                                      child: LikeButton(
                                        idd: data[index].reference.id,
                                        dataa: data[index].data(),
                                      ),
                                    ),
                                  ],
                                ),
                                //الوصف
                                Container(
                                  height: 30,
                                  width: double.infinity,
                                  margin: const EdgeInsets.only(top: 10),
                                  padding: const EdgeInsets.only(
                                      right: 20, left: 20, top: 5, bottom: 5),
                                  child: Text(
                                    data[index]['deteils'] ?? " ",
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontFamily: 'tajawal',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
