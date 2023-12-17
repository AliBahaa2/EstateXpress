import 'package:flutter/material.dart';

class category extends StatelessWidget {
  const category({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TabBar(
          unselectedLabelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.black),
          //  padding: const EdgeInsets.only(right: 5, left: 5),
          isScrollable: true,
          controller: _tabController,
          labelColor: Colors.white,
          tabs: [
            Tab(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black, width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "البيوت",
                    style: TextStyle(
                      fontFamily: 'cairo',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black, width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "الشقق",
                    style: TextStyle(
                      fontFamily: 'cairo',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black, width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "قطع اراضي",
                    style: TextStyle(
                      fontFamily: 'cairo',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black, width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "الاجارات",
                    style: TextStyle(
                      fontFamily: 'cairo',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
