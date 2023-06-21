import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EspressoCard extends StatelessWidget {
  const EspressoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFBDAD),
        body: InkWell(
          onTap: () {
            Navigator.pop(context);
            HapticFeedback.lightImpact();
           
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'images/maintenance (2).png',
              fit: BoxFit.contain,
            ),
          ),
        ));
  }
}
