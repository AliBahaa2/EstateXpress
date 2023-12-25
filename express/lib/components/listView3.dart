import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:express/pages/deteilsScreen.dart';
import 'package:express/widgets/favbotton.dart';
import 'package:express/widgets/loadindWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ListViewEstate3 extends StatefulWidget {
  const ListViewEstate3({super.key});

  @override
  State<ListViewEstate3> createState() => _ListViewEstateState();
}

class _ListViewEstateState extends State<ListViewEstate3>
    with SingleTickerProviderStateMixin {
  List data = [];

  getData() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('estatedb')
        .where('type', isEqualTo: "قطعة أرض")
        .get();
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
    return data == null
        ? Center(
            child: loadindWidget(),
          )
        : ListView.builder(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DeteilsScreen(
                        data: data[index].data(),
                      ),
                    ));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 8,
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
                                        right: 20, left: 20, top: 5, bottom: 5),
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
                                        right: 20, left: 20, top: 5, bottom: 5),
                                    child: Text(
                                      data[index]['price'] ?? " ",
                                      style: const TextStyle(
                                          fontFamily: 'tajawal',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 5, right: 5),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white60),
                                    child: LikeButton(
                                        idd: data[index].reference.id,
                                        dataa: data[index].data()),
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
  }
}
