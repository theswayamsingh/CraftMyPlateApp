import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'globals.dart' as globals;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.gotoLoginScreen});
  final void Function() gotoLoginScreen;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:8.0, left: 14),
            child: Text(
              'Hi, ${globals.name}',
              style: GoogleFonts.lexend(
                fontSize: 28,
                color: const Color(0xFF6318AF),
                fontWeight: FontWeight.w400
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current Location',
                      style: GoogleFonts.lexend(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined, color: Color(0xFF6318AF),),
                        Text(
                          'Hyderabad',
                          style: GoogleFonts.lexend(
                            fontWeight: FontWeight.w400,
                            fontSize: 18
                          ),
                        ),
                        const Icon(Icons.arrow_drop_down, size: 26, color: Color.fromARGB(255, 111, 111, 111),),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Column(
                  children: [
                    const Icon(Icons.play_circle_outlined, color: Color(0xFF6318AF), size: 30,),
                    Text(
                      'How it works?',
                      style: GoogleFonts.lexend(
                        fontSize: 14
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Container(
                      height: 150,
                      width: 420,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.orange,
                        image: DecorationImage(image: AssetImage('assets/food1.png'), fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Container(
                      width: 420,
                      height: 50,
                      decoration: const BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                        ),],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search food or events',
                              border: InputBorder.none
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0, left: 14),
                    child: Text(
                      'Start Crafting',
                      style: GoogleFonts.lexend(
                        fontSize: 24,
                        color: const Color(0xFF6318AF),
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 195,
                          decoration: const BoxDecoration(
                            boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                            ),],
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.orange,
                            image: DecorationImage(image: AssetImage('assets/food2.png'), fit: BoxFit.fill)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 150,
                          width: 195,
                          decoration: const BoxDecoration(
                            boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                            ),],
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.orange,
                            image: DecorationImage(image: AssetImage('assets/food3.png'), fit: BoxFit.fill)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Meal Box',
                                  style: GoogleFonts.lexend(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                Row(
                                  children: [
                                    Text(
                                      '(',style: GoogleFonts.lexend(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300
                                      ),
                                    ),
                                    const Icon(Icons.person, size: 22, color: Colors.grey,),
                                    Text(
                                      'Min 10)',
                                      style: GoogleFonts.lexend(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              'More',
                              style: GoogleFonts.lexend(
                                fontSize: 20,
                                color: const Color(0xFF6318AF),
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Individually packed meal boxes for happiness!',
                          style: GoogleFonts.lexend(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 179, 178, 178),
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/food4.png'),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Delivery Box',
                                  style: GoogleFonts.lexend(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                Row(
                                  children: [
                                    Text(
                                      '(',style: GoogleFonts.lexend(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300
                                      ),
                                    ),
                                    const Icon(Icons.person, size: 22, color: Colors.grey,),
                                    Text(
                                      'Min 10 - Max 50)',
                                      style: GoogleFonts.lexend(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              'More',
                              style: GoogleFonts.lexend(
                                fontSize: 20,
                                color: const Color(0xFF6318AF),
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Best for small gatherings and house-parties',
                          style: GoogleFonts.lexend(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 179, 178, 178),
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    width: 450,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 14,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 330,
                            decoration: const BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                              ),],
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.orange,
                              image: DecorationImage(image: AssetImage('assets/food5.png'), fit: BoxFit.fill)
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 330,
                            decoration: const BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                              ),],
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.orange,
                              image: DecorationImage(image: AssetImage('assets/food5.png'), fit: BoxFit.fill)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Catering Menus',
                                  style: GoogleFonts.lexend(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                Row(
                                  children: [
                                    Text(
                                      '(',style: GoogleFonts.lexend(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300
                                      ),
                                    ),
                                    const Icon(Icons.person, size: 22, color: Colors.grey,),
                                    Text(
                                      'Min 200)',
                                      style: GoogleFonts.lexend(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              'More',
                              style: GoogleFonts.lexend(
                                fontSize: 20,
                                color: const Color(0xFF6318AF),
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Best for weddings, Corporate Events, Birthdays, etc',
                          style: GoogleFonts.lexend(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 179, 178, 178),
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    width: 450,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 14,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 370,
                            decoration: const BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                              ),],
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.orange,
                              image: DecorationImage(image: AssetImage('assets/food6.png'), fit: BoxFit.fill)
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 370,
                            decoration: const BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                              ),],
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.orange,
                              image: DecorationImage(image: AssetImage('assets/food6.png'), fit: BoxFit.fill)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Text(
                      'Services',
                      style: GoogleFonts.lexend(
                        fontSize: 24,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 430,
                    width: 450,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 14,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 370,
                            decoration: const BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                              ),],
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.orange,
                              image: DecorationImage(image: AssetImage('assets/food7.png'), fit: BoxFit.fill)
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 370,
                            decoration: const BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                              ),],
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.orange,
                              image: DecorationImage(image: AssetImage('assets/food7.png'), fit: BoxFit.fill)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/food8.png'),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      'Delicious Food with\nProffesional service !',
                      style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w400,
                        fontSize: 28
                      ),
                    ),
                  )
                ],
              )
            ),
          )
        ],
      ), //destination screen
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(side: BorderSide(width: 1)),
        onPressed: widget.gotoLoginScreen,
        child: const Icon(Icons.logout, size: 32,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            Icons.home,
            Icons.favorite,
            Icons.shopping_cart_checkout,
            Icons.person
          ],
          height: 70,
          iconSize: 28,
          inactiveColor: const Color.fromARGB(255, 175, 175, 175),
          borderColor: Colors.black,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
      ),
    );
  }
}