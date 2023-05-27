import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(resizeToAvoidBottomInset: false,
            backgroundColor: const Color.fromRGBO(250, 245, 250, 1),
            body: Container(
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Column(children: [
                  Top(),
                  Middle(),
                  SizedBox(
                    height: 42,
                  ),
                  Bottom()
                ]),
              ),
            )),
      ),
    );
  }
}

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "images/TAREFE1.png",
          height: 49,
          width: 51,
        ),
        Row(
          children: [
            Image.asset(
              "images/whatsapp.png",
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              "images/call-calling.png",
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              "images/notification.png",
              height: 24,
              width: 24,
            ),
          ],
        )
      ],
    );
  }
}

class Middle extends StatefulWidget {
  const Middle({super.key});

  @override
  State<Middle> createState() => _MiddleState();
}

class _MiddleState extends State<Middle> {
  @override
  Widget build(BuildContext context) {
    List<String> array = [
      "Gas",
      "Internet",
      "Power",
      "Insurance",
      "Gas",
      "Internet",
      "Power",
      "Insurance",
    ];
    List<bool> isSelected = List.generate(array.length, (index) => false);
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            hintText: "Search Service",
            prefixIcon: Image.asset(
              color: Colors.black,
              "images/searchIcon.png",
              height: 20,
              width: 20,
            ),
            hintStyle: const TextStyle(fontSize: 12),
            filled: true,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 38,
          child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                    width: 8,
                  ),
              itemCount: array.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ChoiceChip(
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    selectedColor: Colors.green,
                    disabledColor: Colors.yellow,
                    onSelected: (isSelect) {
                      setState(() {
                        isSelected[index] = isSelect;
                      });
                    },
                    shape: StadiumBorder(
                        side: BorderSide(color: Colors.grey.shade200)),
                    label: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        array[index],
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    selected: isSelected[index]);
              }),
        )
      ],
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PageViewWithIndicator(
        wSize: MediaQuery.of(context).size.width,
      ),
    );
  }
}

class PageViewWithIndicator extends StatefulWidget {
  final double wSize;

  const PageViewWithIndicator({Key? key, required this.wSize})
      : super(key: key);

  @override
  _PageViewWithIndicatorState createState() => _PageViewWithIndicatorState();
}

class _PageViewWithIndicatorState extends State<PageViewWithIndicator> {
  final PageController _pageController = PageController();
  @override
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      Container(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Card(
                color: Colors.purple.shade100,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  //set border radius more than 50% of height and width to make circle
                ),
                child: Container(
                  width: widget.wSize,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 38, left: 41),
                          child: Container(
                              width: 150,
                              child: const Wrap(
                                children: [
                                  Text(
                                    "az in ghesmat vared service morede nazar mishe",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  )
                                ],
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 65,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.purple.shade50,
                          ),
                          height: 36,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 13),
                                child: Text(
                                    "tozih"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Get Start",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              size: 16,
                                              color: Colors.white,
                                            )
                                          ]),
                                    ),
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.purple,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: -70,
                right: -20,
                child: CustomPaint(
                  painter: MyPainter(),
                  size: const Size(50, 100),
                )),
            Positioned(
                top: -100,
                right: -50,
                child: CustomPaint(
                  painter: MyPainter(),
                  size: const Size(120, 150),
                )),
            Positioned(
                bottom: 80, right: 40, child: Image.asset("images/Group.png"))
          ],
        ),
      ),
      Container(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Card(
                color: Colors.purple.shade100,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  //set border radius more than 50% of height and width to make circle
                ),
                child: Container(
                  width: widget.wSize,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 38, left: 41),
                          child: Container(
                              width: 150,
                              child: const Wrap(
                                children: [
                                  Text(
                                    "az in ghesmat vared service morede nazar mishe",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  )
                                ],
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 65,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.purple.shade50,
                          ),
                          height: 36,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 13),
                                child: Text(
                                    "tozih"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Get Start",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              size: 16,
                                              color: Colors.white,
                                            )
                                          ]),
                                    ),
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.purple,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: -70,
                right: -20,
                child: CustomPaint(
                  painter: MyPainter(),
                  size: const Size(50, 100),
                )),
            Positioned(
                top: -100,
                right: -50,
                child: CustomPaint(
                  painter: MyPainter(),
                  size: const Size(120, 150),
                )),
            Positioned(
                bottom: 80, right: 40, child: Image.asset("images/Group.png"))
          ],
        ),
      ),
      Container(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Card(
                color: Colors.purple.shade100,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  //set border radius more than 50% of height and width to make circle
                ),
                child: Container(
                  width: widget.wSize,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 38, left: 41),
                          child: Container(
                              width: 150,
                              child: const Wrap(
                                children: [
                                  Text(
                                    "az in ghesmat vared service morede nazar mishe",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  )
                                ],
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 65,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.purple.shade50,
                          ),
                          height: 36,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 13),
                                child: Text(
                                    "tozih"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Get Start",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              size: 16,
                                              color: Colors.white,
                                            )
                                          ]),
                                    ),
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.purple,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: -70,
                right: -20,
                child: CustomPaint(
                  painter: MyPainter(),
                  size: const Size(50, 100),
                )),
            Positioned(
                top: -100,
                right: -50,
                child: CustomPaint(
                  painter: MyPainter(),
                  size: const Size(120, 150),
                )),
            Positioned(
                bottom: 80, right: 40, child: Image.asset("images/Group.png"))
          ],
        ),
      ),
    ];
  }

  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: PageView.builder(
              itemCount: pages.length,
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return pages[index];
              }),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            pages.length,
            (index) => Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == _currentPage ? Colors.purple : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final redCircle = Paint()
      ..strokeWidth = 30
      ..color = const Color.fromRGBO(250, 245, 250, 1)
      ..style = PaintingStyle.stroke;
    final arcRect = Rect.fromCircle(
        center: size.bottomCenter(Offset.zero), radius: size.shortestSide);
    canvas.drawArc(arcRect, -30, pi, false, redCircle);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;
}
