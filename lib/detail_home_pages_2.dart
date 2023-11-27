import 'package:flutter/material.dart';
import 'package:test_mqtt_client/component/custom_button.dart';
import 'package:test_mqtt_client/component/spacer_component.dart';

class DetailHomeDuaPages extends StatefulWidget {
  const DetailHomeDuaPages({Key? key}) : super(key: key);

  @override
  State<DetailHomeDuaPages> createState() => _DetailHome2PagesState();
}

class _DetailHome2PagesState extends State<DetailHomeDuaPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Scan'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SENSOR Pengukuran',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        spacer_component(
                          height: 5,
                        ),
                        Text(
                          'Silahkan lakukan ceklis untuk alat jika telah sesuai dan cetak laporan pengetesan.',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  spacer_component(
                    height: 25,
                  ),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 20),
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
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              'Flow Sensor',
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '195622',
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    '/Users/indar/Documents/project/mqtt_hivemq_example/assets/CheckCircleFilled.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                  spacer_component(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    '/Users/indar/Documents/project/mqtt_hivemq_example/assets/CloseCircleFilled.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                  spacer_component(
                    height: 25,
                  ),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 20),
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
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              'Level Sensor',
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Top',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '100',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    '/Users/indar/Documents/project/mqtt_hivemq_example/assets/CheckCircleFilled.png',
                                    width: 35,
                                    height: 35,
                                  ),
                                  spacer_component(
                                    width: 20,
                                  ),
                                  Image.asset(
                                    '/Users/indar/Documents/project/mqtt_hivemq_example/assets/CloseCircleFilled.png',
                                    width: 35,
                                    height: 35,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          spacer_component(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Bottom',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '150',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    '/Users/indar/Documents/project/mqtt_hivemq_example/assets/CheckCircleFilled.png',
                                    width: 35,
                                    height: 35,
                                  ),
                                  spacer_component(
                                    width: 20,
                                  ),
                                  Image.asset(
                                    '/Users/indar/Documents/project/mqtt_hivemq_example/assets/CloseCircleFilled.png',
                                    width: 35,
                                    height: 35,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                  spacer_component(
                    height: 25,
                  ),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 20),
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
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              'ALARM',
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFF002242),
                                  border: Border.all(
                                    color: Color(
                                        0xFF00AB4E), // Set the border color
                                    width: 1.0, // Set the border width
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12)),
                                ),
                                child: Text('Mulai',
                                    style: TextStyle(
                                        fontSize: 21, color: Colors.white)),
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    '/Users/indar/Documents/project/mqtt_hivemq_example/assets/CheckCircleFilled.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                  spacer_component(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    '/Users/indar/Documents/project/mqtt_hivemq_example/assets/CloseCircleFilled.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                  spacer_component(
                    height: 100,
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 30,
                // top: 0,
                left: 0,
                right: 0,
                child: CustomButton(
                  text: 'Simpan Langkah ke 2',
                  color: Color(0xFF002242),
                  onPressed: () {},
                ))
          ],
        ),
      ),
    );
  }
}
