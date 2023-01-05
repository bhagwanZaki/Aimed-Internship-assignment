import 'package:flutter/material.dart';

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({super.key});

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            // Card 1
            Container(
              width: double.infinity,
              color: const Color(0xffD18585),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 20,
                    color: const Color(0xffc4c4c4),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Container(
                        height: 20,
                        width: constraints.maxWidth / 1.1,
                        color: const Color(0xffA8D8AD),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),

            // Card 2
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                      width: double.infinity,
                      color: const Color(0xffD18585),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: double.infinity,
                            height: 20,
                            color: const Color(0xffA8D8AD),
                          )
                        ],
                      )),
                  Positioned(
                    top: -18,
                    child: Container(
                      width: 200,
                      height: 30,
                      color: const Color(0xffc4c4c4),
                    ),
                  )
                ])
          ],
        ),
      )),
    );
  }
}
