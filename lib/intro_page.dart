import 'package:maps_launcher/maps_launcher.dart';
import 'gold_page.dart';
import 'plat_page.dart';
import 'whatsappnumber.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:url_launcher/url_launcher.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});
  static const IconData facebook =
      IconData(0xe255, fontFamily: 'MaterialIcons');

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  Uri dialnumber = Uri(scheme: 'tel', path: '9361000950');

  callnumber() async {
    await launchUrl(dialnumber);
  }

  Uri dialnumber1 = Uri(scheme: 'tel', path: '8610115093');

  callnumber1() async {
    await launchUrl(dialnumber1);
  }

  Uri dialnumber2 = Uri(scheme: 'tel', path: '7339557145');

  callnumber2() async {
    await launchUrl(dialnumber2);
  }

  Uri dialnumber3 = Uri(scheme: 'tel', path: '8838336941');

  callnumber3() async {
    await launchUrl(dialnumber3);
  }

  Uri dialnumber4 = Uri(scheme: 'tel', path: '9600796598');

  callnumber4() async {
    await launchUrl(dialnumber4);
  }

  Uri dialnumber5 = Uri(scheme: 'tel', path: '9943720930');

  callnumber5() async {
    await launchUrl(dialnumber5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: Image.asset('images/appbar.jpg'),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    // barrierColor: Colors.greenAccent,
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      actions: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              SizedBox(
                                // width: double.infinity,
                                width: 80,
                                height: 80,
                                child: Image.asset('images/logoPop.png'),
                              ),
                              const Text(
                                'Announcement',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'New Scheme Started on December',
                                style: TextStyle(fontSize: 15.0),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                '2023',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => GoldPage(),
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        textStyle:
                                            const TextStyle(fontSize: 14.0),
                                      ),
                                      child: const Text(
                                        'YES',
                                        style: TextStyle(
                                            color: Colors.lightGreen,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                // Image.asset('assets/one.png'),
                child: Image.asset(
                  'images/gold.jpg',
                  height: 140,
                  width: 300,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Platinum
            SizedBox(
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      actions: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              SizedBox(
                                // width: double.infinity,
                                width: 80,
                                height: 80,
                                child: Image.asset('images/logoPop.png'),
                              ),
                              const Text(
                                'Announcement',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "Kindly Attention SAC Subscriber's,This \nScheme is only available till November \n2023.If you are already existing in this\n          scheme you can continue.",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => PaltPage(),
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        textStyle:
                                            const TextStyle(fontSize: 14.0),
                                      ),
                                      child: const Text(
                                        'YES',
                                        style: TextStyle(
                                            color: Colors.lightGreen,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.asset(
                  'images/platinum.jpg',
                  height: 145,
                  width: 250,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        color: Colors.white,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  // color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("images/net.png"), fit: BoxFit.cover),
                  // button text
                ),
              ),
              onTap: _launchWEURL,
            ),
            GestureDetector(
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  // color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("images/fa.jpeg"), fit: BoxFit.cover),
                  // button text
                ),
              ),
              onTap: _launchFAURL,
            ),
            GestureDetector(
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  // color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("images/insta.jpeg"),
                      fit: BoxFit.cover),
                  // button text
                ),
              ),
              onTap: _launchINURL,
            ),
            GestureDetector(
              child: Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                  //color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("images/youtube.png"),
                      fit: BoxFit.cover),
                  // button text
                ),
              ),
              onTap: _launchYOURL,
            ),
            SizedBox(
              width: 8,
            ),
            GestureDetector(
              child: Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  // color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("images/call.png"), fit: BoxFit.cover),
                  // button text
                ),
              ),
              onTap: () {
                showDialog(
                  // barrierColor: Colors.greenAccent,
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            SizedBox(
                              // width: double.infinity,
                              width: 40,
                              height: 40,
                              child: Image.asset('images/call.png'),
                            ),
                            const Text(
                              'Contact Details',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Press on the number to direct Call',
                              style: TextStyle(fontSize: 17),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Trichy',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: callnumber,
                                            child: const Text(
                                              '9361000950',
                                            ),
                                          ),
                                          const Icon(
                                            Icons.vibration,
                                            color: Color.fromARGB(
                                                255, 98, 185, 226),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Karur',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: callnumber1,
                                            child: const Text('8610115093'),
                                          ),
                                          const Icon(
                                            Icons.vibration,
                                            color: Color.fromARGB(
                                                255, 98, 185, 226),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Namakkal',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: callnumber2,
                                            child: const Text('7339557145'),
                                          ),
                                          const Icon(
                                            Icons.vibration,
                                            color: Color.fromARGB(
                                                255, 98, 185, 226),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Madurai',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: callnumber3,
                                            child: const Text('8838336941'),
                                          ),
                                          const Icon(
                                            Icons.vibration,
                                            color: Color.fromARGB(
                                                255, 98, 185, 226),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Salem',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: callnumber4,
                                            child: const Text('9600796598'),
                                          ),
                                          const Icon(
                                            Icons.vibration,
                                            color: Color.fromARGB(
                                                255, 98, 185, 226),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Chennai',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: callnumber5,
                                            child: const Text('9943720930'),
                                          ),
                                          const Icon(
                                            Icons.vibration,
                                            color: Color.fromARGB(
                                                255, 98, 185, 226),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.black,
                                        backgroundColor: const Color.fromARGB(
                                            255, 120, 188, 243),
                                        padding: const EdgeInsets.fromLTRB(
                                            30, 15, 30, 15),
                                        textStyle:
                                            const TextStyle(fontSize: 15),
                                      ),
                                      child: const Text('Cancel'))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    // color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("images/whatsapp.png"),
                        fit: BoxFit.cover),
                    // button text
                  )),
              onTap: () {
                showDialog(
                  // barrierColor: Colors.greenAccent,
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            /*SizedBox(
                              // width: double.infinity,
                              width: 50,
                              height: 50,
                              child: Image.asset('assets/img/wh.jpeg'),
                            ),*/
                            const Text(
                              'Whatsapp Details',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Press on the number to direct whatsapp chat',
                              style: TextStyle(fontSize: 17),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Trichy',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      WhatsAppNumber('+919361000950'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Karur',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      WhatsAppNumber('+918610115093'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Namakkal',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      WhatsAppNumber('+917339557145'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Madurai',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      WhatsAppNumber('+918838336941'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Salem',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      WhatsAppNumber('+919600796598'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Thanjavur',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      WhatsAppNumber('+919943720930'),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // WhatsAppNumber('7339557145'),

                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.black,
                                        backgroundColor: const Color.fromARGB(
                                            255, 120, 188, 243),
                                        padding: const EdgeInsets.fromLTRB(
                                            30, 15, 30, 15),
                                        textStyle:
                                            const TextStyle(fontSize: 15),
                                      ),
                                      child: const Text('Cancel'))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    // color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("images/lo.png"), fit: BoxFit.cover),
                    // button text
                  )),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            /*  SizedBox(
                              width: 50,
                              height: 50,
                              // child: Image.asset('assets/img/lo.jpeg'),
                            ),*/
                            const Text(
                              'Location Details',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Press on the location and get the direction in Map',
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Trichy',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () =>
                                                MapsLauncher.launchQuery(
                                                    'Femina Mall, Trichy'),
                                            child: const Text(
                                              'Femina Mall ',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 120, 188, 243),
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.location_on,
                                            color: Color.fromARGB(
                                                255, 240, 35, 35),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Karur',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () =>
                                                MapsLauncher.launchQuery(
                                                    'Plaza Bus Stand, Karur'),
                                            child: const Text(
                                              'Plaza Bus Stand',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 120, 188, 243),
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.location_on,
                                            color: Color.fromARGB(
                                                255, 240, 35, 35),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Namakkal',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () =>
                                                MapsLauncher.launchQuery(
                                                    'S.P.Pudhur, Namakkal'),
                                            child: const Text(
                                              'S.P.Pudhur',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 120, 188, 243),
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.location_on,
                                            color: Color.fromARGB(
                                                255, 240, 35, 35),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Madurai',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () =>
                                                MapsLauncher.launchQuery(
                                                    'MGR Bus Stand, Madurai'),
                                            child: const Text(
                                              'MGR Bus Stand',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 120, 188, 243),
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.location_on,
                                            color: Color.fromARGB(
                                                255, 240, 35, 35),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Salem',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () =>
                                                MapsLauncher.launchQuery(
                                                    'Reliance Mall, Salem'),
                                            child: const Text(
                                              'Reliance Mall',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 120, 188, 243),
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.location_on,
                                            color: Color.fromARGB(
                                                255, 240, 35, 35),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Chennai',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () =>
                                                MapsLauncher.launchQuery(
                                                    'Clock Tower, chennai'),
                                            child: const Text(
                                              'Clock Tower',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 120, 188, 243),
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.location_on,
                                            color: Color.fromARGB(
                                                255, 240, 35, 35),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.black,
                                        backgroundColor:
                                            Color.fromARGB(255, 120, 188, 243),
                                        padding: const EdgeInsets.fromLTRB(
                                            30, 15, 30, 15),
                                        textStyle:
                                            const TextStyle(fontSize: 15),
                                      ),
                                      child: const Text('Cancel'))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30,
                child: Text(
                  'Toll Free : 1800 425 1432  ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 33, 32, 32),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchWEURL() async {
  Uri _url = Uri.parse('https://www.jayanathanchits.com/');
  if (await launchUrl(_url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

_launchINURL() async {
  Uri _url = Uri.parse(
      'https://instagram.com/sreejayanathanchits?igshid=MWZjMTM2ODFkZg==');
  if (await launchUrl(_url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

_launchFAURL() async {
  Uri _url = Uri.parse('https://m.facebook.com/SjChits');
  if (await launchUrl(_url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

_launchYOURL() async {
  Uri _url = Uri.parse(
      'https://youtube.com/@sreejayanathanchits6684?si=R6RLsoKlhSYesqQa');
  if (await launchUrl(_url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}
