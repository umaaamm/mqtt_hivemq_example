import 'package:flutter/material.dart';
import 'package:test_mqtt_client/component/custom_button.dart';
import 'package:test_mqtt_client/component/spacer_component.dart';

class DetailHomeTigaPages extends StatefulWidget {
  const DetailHomeTigaPages({Key? key}) : super(key: key);

  @override
  State<DetailHomeTigaPages> createState() => _DetailHomeTigaPagesState();
}

class _DetailHomeTigaPagesState extends State<DetailHomeTigaPages> {
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
        height: MediaQuery.of(context).size.height,
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
                          'PushButton & Switch',
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
                                    'PB_Merah',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5)),
                                  ),
                                  child: Text(
                                    'Tekan',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  )),
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
                                    'PB_Hijau',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5)),
                                  ),
                                  child: Text(
                                    'Tekan',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  )),
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
                                    'PB_Biru',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5)),
                                  ),
                                  child: Text(
                                    'Tekan',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  )),
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
                                    'LED_Merah',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Container(
                                  padding: EdgeInsets.all(6),
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5)),
                                  ),
                                  child: Text(
                                    '',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  )),
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
                                    'LED_Green',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Container(
                                  width: 35,
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5)),
                                  ),
                                  child: Text(
                                    '',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  )),
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
                                    'LED_Biru',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Container(
                                  width: 35,
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5)),
                                  ),
                                  child: Text(
                                    '',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  )),
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
                        ],
                      )),
                  spacer_component(
                    height: 25,
                  ),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
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
                                    'Door Switch',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0E0B31),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5)),
                                  ),
                                  child: Text(
                                    'Tekan',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  )),
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
                        ],
                      )),
                  spacer_component(
                    height: 25,
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
                  text: 'Simpan Langkah ke 3',
                  color: Color(0xFF002242),
                  onPressed: () {},
                ))
          ],
        ),
      ),
    );
  }
}
