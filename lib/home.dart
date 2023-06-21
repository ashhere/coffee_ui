import 'package:coffee_ui/cards.dart';

import 'package:coffee_ui/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorPallet().scaffoldBgColor,
        body: const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff1E232C),
                      child: CircleAvatar(
                        backgroundColor: Color(0xff1F242C),
                        radius: 22,
                        child: Icon(
                          Icons.grid_view_rounded,
                          color: Colors.grey,
                          size: 25,
                        ),
                      ),
                    ),
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xff1E232C),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/model.png'),
                          radius: 22,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Find the best \ncoffee for you",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 241, 239, 239),
                        fontFamily: 'PatuaOne Regular',
                        fontWeight: FontWeight.w300,
                        wordSpacing: -4),
                  )),
              SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 34, 37, 41),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff52555A),
                    ),
                    hintText: "Find Your Coffee....",
                    hintStyle: TextStyle(color: Color(0xff52555A)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
              ),
              TabBar(
                  labelColor: Color(0xffD17741),
                  indicatorColor: Color(0xffD17741),
                  unselectedLabelColor: Color(0xff52555A),
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  tabs: [
                    Tab(text: 'Cappuccino'),
                    Tab(text: 'Espresso'),
                    Tab(text: 'Latte'),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Cards(
                          title: 'Cappuccino',
                          subtitle: 'With Oat Milk',
                          price: 4.10,
                          imageAddress: 'images/coffeemain.jpg',
                          trueOrFalse: false),
                      Cards(
                          title: 'Cappuccino',
                          subtitle: 'With Chocolate',
                          price: 3.10,
                          imageAddress: 'images/secondary.jpg',
                          trueOrFalse: true)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Cards(
                          title: 'Espresso',
                          subtitle: 'Two Shots',
                          price: 3.20,
                          imageAddress: 'images/espresso.jpeg',
                          trueOrFalse: true),
                      Cards(
                          title: 'Espresso',
                          subtitle: 'Three Shots',
                          price: 4.10,
                          imageAddress: 'images/espresso1.jpeg',
                          trueOrFalse: true)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Cards(
                          title: 'Latte',
                          subtitle: 'Flat White',
                          price: 3.20,
                          imageAddress: 'images/latte.jpg',
                          trueOrFalse: true),
                      Cards(
                          title: 'Latte',
                          subtitle: 'Mocha',
                          price: 5.10,
                          imageAddress: 'images/latte2.jpeg',
                          trueOrFalse: true)
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color(0xff1B181A),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xffD17842),
                    size: 35,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Color(0xff4E5053),
                    size: 35,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: Color(0xff4E5053),
                    size: 35,
                  ),
                  label: ''),
            ]),
      ),
    );
  }
}
