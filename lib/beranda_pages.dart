import 'package:flutter/material.dart';
import 'package:test_mqtt_client/component/custom_button.dart';
import 'package:test_mqtt_client/component/spacer_component.dart';
import 'package:test_mqtt_client/home_pages.dart';
import 'package:test_mqtt_client/mqtt_client_wrapper.dart';

class BerandaPages extends StatefulWidget {
  const BerandaPages({Key? key}) : super(key: key);

  @override
  State<BerandaPages> createState() => _BerandaPagesState();
}

class _BerandaPagesState extends State<BerandaPages> {
  bool showPassword = true;
  MQTTClientWrapper newclient = new MQTTClientWrapper();

  @override
  void initState() {
    // TODO: implement initState
    showPassword = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF002242),
      body: Container(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 130),
                  child: Image.asset(
                    '/Users/indar/Documents/project/mqtt_hivemq_example/assets/logo.png',
                    width: 160,
                    height: 160,
                  ),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                width: double.infinity,
                height: 530,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Masuk",
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.w700)),
                    ),
                    spacer_component(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF0F0F0), // Set the background color
                        borderRadius: BorderRadius.circular(
                            10.0), // Set the border radius
                      ),
                      child: TextField(
                        onChanged: (value) {
                          // Handle the text change here
                          print('Text changed: $value');
                        },
                        style: TextStyle(color: Colors.black),
                        // Set text color
                        decoration: InputDecoration(
                          border: InputBorder.none, // Hide the default border
                          hintText: 'Enter your text',
                          contentPadding: EdgeInsets.all(16.0),
                          prefixIcon: Icon(
                            Icons
                                .person, // You can replace this with any other icon
                            size: 30,
                            color: Colors.black,
                          ), // Set content padding
                        ),
                      ),
                    ),
                    spacer_component(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        obscureText: showPassword,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your text',
                            contentPadding: EdgeInsets.all(16.0),
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 30,
                              color: Colors.black,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                              child: Icon(
                                Icons.remove_red_eye_outlined,
                                size: 30,
                                color: Colors.black,
                              ),
                            )),
                      ),
                    ),
                    spacer_component(
                      height: 30,
                    ),
                    CustomButton(
                      text: 'Masuk',
                      color: Color(0xFF002242),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePages();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
