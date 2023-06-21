import 'package:coffee_ui/espresso_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'cart_screen.dart';

class Cards extends StatelessWidget {
  final String title;
  final String subtitle;
  final double price;
  final String imageAddress;
  final bool trueOrFalse;

  const Cards({
    super.key, required this.title, required this.subtitle, required this.price, required this.imageAddress,required this.trueOrFalse
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () {
        HapticFeedback.heavyImpact();
                              trueOrFalse==false?Navigator.push(context, MaterialPageRoute(builder: (context) =>const  MyCartScreen())):
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const EspressoCard()));
                            },
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 300,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff1E222A),
                  Color(0xff0F1217),
                ])),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  imageAddress,
                  fit: BoxFit.cover
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             Align(
              alignment: Alignment.centerLeft,
              child: Text(
                " $title",
                style:const  TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                ' $subtitle',
                style: TextStyle(
                    color: Colors.white.withAlpha(400),
                    fontSize: 14),
              ),
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                 Row(
                  children: [
                    const Text(
                      '\$',
                      style: TextStyle(
                        color: Color(0xffD17842),
                        fontSize: 20,
                      ),
                    ),
                    Text('$price',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600))
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffD17741),
                      borderRadius:
                          BorderRadius.circular(15)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  
  }
}
