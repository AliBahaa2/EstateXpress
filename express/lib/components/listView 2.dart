import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:express/widgets/loadindWidget.dart';
import 'package:flutter/material.dart';

class ListViewEstate2 extends StatefulWidget {
  const ListViewEstate2({super.key});

  @override
  State<ListViewEstate2> createState() => _ListViewEstateState();
}

class _ListViewEstateState extends State<ListViewEstate2>
    with SingleTickerProviderStateMixin {
  List data = [];

  getData() async {
    CollectionReference estate =
        FirebaseFirestore.instance.collection("estatedb");
    QuerySnapshot querySnapshot =
        await estate.where("type", isEqualTo: "بيت").get();
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
                    decoration: BoxDecoration(border: Border.all(width: 1.3)),
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: double.infinity,
                            //color: kPrimaryColor,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        NetworkImage(data[index]['url'] ?? " "),
                                    fit: BoxFit.fill),
                                border: Border(bottom: BorderSide(width: 2)))),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 20, top: 5, bottom: 5),

                                    //height: 20,
                                    decoration:
                                        BoxDecoration(border: Border.all()),
                                    child: Text(
                                        "${data[index]['city'] ?? " "} / ${data[index]['city2'] ?? " "} / ${data[index]['city3'] ?? " "}"),
                                  ),
                                  Container(
                                    height: 30,
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 20, top: 5, bottom: 5),
                                    decoration:
                                        BoxDecoration(border: Border.all()),
                                    child: Text(data[index]['price'] ?? " "),
                                  ),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: double.infinity,
                                margin: const EdgeInsets.only(top: 10),
                                padding: const EdgeInsets.only(
                                    right: 20, left: 20, top: 5, bottom: 5),
                                decoration: BoxDecoration(border: Border.all()),
                                child: Text(data[index]['deteils'] ?? " "),
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
