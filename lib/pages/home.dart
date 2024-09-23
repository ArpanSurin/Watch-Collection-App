import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/category_model.dart';
import 'package:flutter_app/models/popular_model.dart';
import 'package:flutter_app/models/watch_model.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<WatchModel> watches = [];
  List<PopularWatchModel> popularwatch = [];

  @override
  void initState() {
    super.initState();
    _getInitialInfo(); // Only call this once when the widget is initialized
  }

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
    watches = WatchModel.getWatches();
    popularwatch = PopularWatchModel.getPopularWatch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          // Search Field
          _searchField(),
          const SizedBox(height: 40),

          // Categories Section
          _categoriesSection(),
          const SizedBox(
            height: 40,
          ),

          // Watches Section
          _watchSection(),
          const SizedBox(
            height: 40,
          ),

          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Popular",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListView.separated(
                itemCount: popularwatch.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(
                      height: 25,
                    ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 115,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          popularwatch[index].iconPath,
                          width: 90,
                          height: 90,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popularwatch[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 16
                              ),
                            ),
                            Text(
                              popularwatch[index].kind + ' | ' + popularwatch[index].fashion + ' | ' + popularwatch[index].ammount,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff7B6F72),
                                fontSize: 13
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/icons/next.png',
                            width: 30,
                            height: 30,
                        )
                        ))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: popularwatch[index].boxIsSelected ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: popularwatch[index].boxIsSelected ? [
                          BoxShadow(
                              color: Color(0xff1D1617).withOpacity(0.4),
                              offset: Offset(0, 10),
                              blurRadius: 40,
                              spreadRadius: 0
                              )
                        ] : []
                        ),
                  );
                })
          ]),
          SizedBox(height: 40,)
        ],
      ),
    );
  }

  Column _watchSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Recommended\nFor You",
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 240,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 210,
                decoration: BoxDecoration(
                  color: watches[index].boxColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(watches[index].iconPath,
                        width: 100, height: 100),
                    Column(
                      children: [
                        Text(
                          watches[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          watches[index].kind +
                              ' | ' +
                              watches[index].fashion +
                              ' | ' +
                              watches[index].amount,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 130,
                      child: Center(
                        child: Text(
                          "View",
                          style: TextStyle(
                              color: watches[index].viewIsSelected
                                  ? Colors.white
                                  : Color(0xffC58BF2),
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff1D1617).withOpacity(0.2),
                                offset: Offset(0, 8),
                                blurRadius: 15,
                                spreadRadius: 0)
                          ],
                          gradient: LinearGradient(colors: [
                            watches[index].viewIsSelected
                                ? Color(0xff9DCEFF)
                                : Colors.transparent,
                            watches[index].viewIsSelected
                                ? Color(0xff92A3FD)
                                : Colors.transparent
                          ]),
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 25),
            itemCount: watches.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, right: 20),
          ),
        ),
      ],
    );
  }

  Column _categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Category',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 120,
          child: ListView.separated(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20, right: 20),
              separatorBuilder: (context, index) => SizedBox(
                    width: 25,
                  ),
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  decoration: BoxDecoration(
                      color: categories[index].boxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(categories[index].iconPath),
                        ),
                      ),
                      Text(
                        categories[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

  Container _searchField() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 24, // Set a fixed width for the icon
                height: 24, // Set a fixed height for the icon
                child: Image.asset('assets/icons/search.png'),
              ),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 24, // Set a fixed width for the icon
                height: 24, // Set a fixed height for the icon
                child: Image.asset('assets/icons/filter.png'),
              ),
            ),
            hintText: 'Search',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      // ignore: prefer_const_constructors
      title: Text(
        'OverWatch',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          child:
              Image.asset('assets/icons/left-arrow.png', height: 20, width: 20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            child: Image.asset('assets/icons/dots.png', height: 25, width: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          ),
        )
      ],
    );
  }
}
