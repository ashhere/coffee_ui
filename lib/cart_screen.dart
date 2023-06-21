

import 'package:coffee_ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallet().scaffoldBgColor,
      body: Column(children: [
        SafeArea(
          child: Expanded(
              child: Stack(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      padding: const EdgeInsets.all(0),
                      height: MediaQuery.of(context).size.height / 1.7,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: ColorPallet().scaffoldBgColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Image.asset(
                        'images/coffeemain.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 35.0, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                            HapticFeedback.heavyImpact();
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: const Color(0xff181C23),
                                borderRadius: BorderRadius.circular(15)),
                            child: const Icon(
                              Icons.navigate_before,
                              size: 40,
                              color: Color(0xff525154),
                              weight: 1,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xff181C23),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Icon(
                            Icons.favorite,
                            size: 25,
                            color: Color(0xff525154),
                            weight: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 281),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 20),
                          height: 144,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: const Color(0xff40241C).withOpacity(.8),
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        " Cappuccino",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        " With Oat Milk",
                                        style: TextStyle(
                                            color: Colors.white.withAlpha(400),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Color(0xffD17842),
                                            ),
                                            const Text(
                                              " 4.5",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              " (6,986)",
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withAlpha(400),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            shape: BeveledRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            backgroundColor:
                                                const Color(0xff0C0F14)),
                                        child: Text(
                                          'Light Roasted',
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withAlpha(400)),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xff0C0F14),
                                            shape: BeveledRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                        child: Text(
                                          'Medium Roasted',
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withAlpha(400)),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            shape: BeveledRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            backgroundColor:
                                                const Color(0xff0C0F14)),
                                        child: Text(
                                          'Heavy Roasted',
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withAlpha(400)),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 15, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Description:",
                    style: TextStyle(
                        color: Colors.white.withAlpha(450), fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, bottom: 20),
                  child: Text(
                    "A cappuccino is the perfect balance of espresso, steamed milk and foam.This coffee is all about the structure and the even splitting of all elements into equal thirds.",
                    style: TextStyle(
                        color: Colors.white.withAlpha(400), fontSize: 13),
                  ),
                ),
                Text(
                  "Size:",
                  style: TextStyle(
                      color: Colors.white.withAlpha(450), fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 35,
                      width: 100,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff0C0F14),
                              side: const BorderSide(
                                  color: Color(0xffD17842), width: 1),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(6))),
                          child: const Text(
                            "S",
                            style: TextStyle(
                                color: Color(0xffD17842), fontSize: 25),
                          )),
                    ),
                    SizedBox(
                      height: 35,
                      width: 100,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff141921),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: Text(
                            "M",
                            style: TextStyle(
                                color: Colors.white.withAlpha(450),
                                fontSize: 25),
                          )),
                    ),
                    SizedBox(
                      height: 35,
                      width: 100,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff141921),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: Text(
                            "L",
                            style: TextStyle(
                                color: Colors.white.withAlpha(450),
                                fontSize: 25),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                              color: Colors.white.withAlpha(400), fontSize: 20),
                        ),
                        const Row(children: [
                          Text(
                            "\$",
                            style: TextStyle(
                                color: Color(0xffD17842), fontSize: 30),
                          ),
                          Text(
                            "4.20",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ]),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(6)),
                            backgroundColor:const  Color(0xffD17842),
                          ),
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w400),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        )

        // SafeArea(
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(40),
        //     child: Container(
        //       width: MediaQuery.of(context).size.width,
        //       height: MediaQuery.of(context).size.height / 2,
        //       decoration: BoxDecoration(

        //         borderRadius: BorderRadius.circular(40),

        //       ),
        //       child: Image.asset('images/coffeemain.jpg',fit: BoxFit.cover,),
        //     ),
        //   ),
        // ),
      ]),
    );
  }
}
