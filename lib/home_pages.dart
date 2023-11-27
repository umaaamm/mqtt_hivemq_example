import 'package:flutter/material.dart';
import 'package:test_mqtt_client/component/custom_button.dart';
import 'package:test_mqtt_client/component/spacer_component.dart';
import 'package:test_mqtt_client/detail_home_pages.dart';
import 'package:test_mqtt_client/detail_home_pages_2.dart';
import 'package:test_mqtt_client/detail_home_pages_3.dart';
import 'package:test_mqtt_client/detail_home_pages_4.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF002242),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: SafeArea(
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 80, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Selamat Datang',
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                            Text('Admin,',
                                style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Connected',
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green)),
                            Row(
                              children: [
                                Text('-21,',
                                    style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white)),
                                spacer_component(
                                  width: 10,
                                ),
                                Image.asset(
                                  '/Users/indar/Documents/project/mqtt_hivemq_example/assets/SignalFilled.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              spacer_component(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Langkah pengetesan',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
              ),
              Wrap(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailHomePages();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 130,
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF00AB4E), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Langkah 1',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500)),
                          spacer_component(height: 10),
                          Text('Sudah di Test',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailHomeDuaPages();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 130,
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF00AB4E), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Langkah 2',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500)),
                          spacer_component(height: 10),
                          Text('Sudah di Test',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailHomeTigaPages();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 130,
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF00AB4E), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Langkah 3',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500)),
                          spacer_component(height: 10),
                          Text('Mulai di Test',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailHomeEmpatPages();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 130,
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF00AB4E), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Langkah 4',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500)),
                          spacer_component(height: 10),
                          Text('Mulai di Test',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Langkah 5');
                    },
                    child: Container(
                      width: 170,
                      height: 130,
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF00AB4E), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Langkah 5',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500)),
                          spacer_component(height: 10),
                          Text('Mulai di Test',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Langkah 6');
                    },
                    child: Container(
                      width: 170,
                      height: 130,
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF00AB4E), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Langkah 6',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500)),
                          spacer_component(height: 10),
                          Text('Mulai di Test',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: CustomButton(
                  text: 'Simpan dan Cetak',
                  color: Colors.green,
                ),
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF002242),
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner_outlined),
            label: 'Hubungkan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Keluar',
          ),
        ],
        currentIndex: 0, // Set the initial selected tab index
        onTap: (int index) {
          // Handle tab selection here
          print('Selected tab index: $index');
        },
      ),
    );
  }
}
