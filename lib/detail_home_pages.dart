import 'package:flutter/material.dart';
import 'package:test_mqtt_client/component/custom_button.dart';
import 'package:test_mqtt_client/component/spacer_component.dart';

class DetailHomePages extends StatefulWidget {
  const DetailHomePages({Key? key}) : super(key: key);

  @override
  State<DetailHomePages> createState() => _DetailHomePagesState();
}

class _DetailHomePagesState extends State<DetailHomePages> {
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          '/Users/indar/Documents/project/mqtt_hivemq_example/assets/link.png',
                          width: 52,
                          height: 52,
                        ),
                      )),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SENSOR Temperature',
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'DS18_1 34c dsaw',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'DS18_1 34c dsaw',
                                    style: TextStyle(
                                        fontSize: 16,
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
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'DS18_1 34c dsaw',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'DS18_1 34c dsaw',
                                    style: TextStyle(
                                        fontSize: 16,
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
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'DS18_1 34c dsaw',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'DS18_1 34c dsaw',
                                    style: TextStyle(
                                        fontSize: 16,
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
                            height: 10,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'DS18_1 34c dsaw',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'DS18_1 34c dsaw',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    '/Users/indar/Documents/project/mqtt_hivemq_example/assets/CheckCircleFilled.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          spacer_component(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'DS18_1 34c dsaw',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'DS18_1 34c dsaw',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
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
                ],
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: CustomButton(
                    text: 'Simpan langkah 1',
                    color: Color(0xFF002242),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
