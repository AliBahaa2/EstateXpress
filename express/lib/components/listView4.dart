import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:express/widgets/loadindWidget.dart';
import 'package:flutter/material.dart';

class ListViewEstate4 extends StatefulWidget {
  const ListViewEstate4({super.key});

  @override
  State<ListViewEstate4> createState() => _ListViewEstateState();
}

class _ListViewEstateState extends State<ListViewEstate4>
    with SingleTickerProviderStateMixin {
  List data = [];

  getData() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('estatedb')
        .where('type', isEqualTo: "ايجار")
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
            physics: BouncingScrollPhysics(
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
                    Navigator.of(context).pushNamed("DeteilsScreen");
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                    ),
                    decoration: BoxDecoration(
                      // border: Border.all(width: 1.3),
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromARGB(129, 217, 217, 217),
                    ),
                    child: Column(
                      children: [
                        //الصورة
                        Container(
                          height: 300,
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
                          margin: const EdgeInsets.all(10),
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
                                    child: IconButton(
                                      iconSize: 40.0,
                                      alignment: Alignment.center,
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite,
                                          color: Colors.red),
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
                                    fontWeight: FontWeight.bold,
                                  ),
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
