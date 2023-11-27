import 'package:flutter/material.dart';
import 'package:test_mqtt_client/component/custom_button.dart';
import 'package:test_mqtt_client/component/spacer_component.dart';

class ScanPages extends StatefulWidget {
  const ScanPages({Key? key}) : super(key: key);

  @override
  State<ScanPages> createState() => _ScanPagesState();
}

class _ScanPagesState extends State<ScanPages> {
  bool showBottomSheet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      'Silahkan scan alat yang akan dihubungkan dan simpan',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    spacer_component(height: 30),
                    CustomButton(
                      text: 'Scan QR Label',
                      color: Color(0xFFA04A4A),
                    ),
                    spacer_component(height: 30),
                    CustomButton(
                      text: 'Scan QR Device ID',
                      color: Color(0xFF0E0B31),
                    ),
                    spacer_component(height: 30),
                    CustomButton(
                      text: 'Scan Dispenser',
                      color: Color(0xFFFF8C00),
                    ),
                    spacer_component(height: 30),
                    CustomButton(
                      text: 'Scan QRIS',
                      color: Color(0xFF0085FF),
                    ),
                    spacer_component(height: 50),
                    Text(
                      'QR Label :  ojfdfjkdn3ieiu4934inknfknfdnfkndfkc',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    spacer_component(height: 18),
                    Text(
                      'QR Label :  ojfdfjkdn3ieiu4934inknfknfdnfkndfkc',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    spacer_component(height: 18),
                    Text(
                      'QR Label :  ojfdfjkdn3ieiu4934inknfknfdnfkndfkc',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    spacer_component(height: 18),
                    Text(
                      'QR Label :  ojfdfjkdn3ieiu4934inknfknfdnfkndfkc',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    spacer_component(height: 18),
                  ],
                ),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: CustomButton(
                        text: 'Pair',
                        color: Color(0xFF002242),
                        onPressed: () {
                          setState(() {
                            showBottomSheet = !showBottomSheet;
                          });
                        }),
                  )),
            ],
          ),
        ),
        bottomSheet: showBottomSheet
            ? Container(
                height: 361,
                padding: EdgeInsets.only(top: 20, bottom: 40, left: 20,right: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFEFEFEF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Data QR Code',
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        spacer_component(
                          height: 20,
                        ),
                        Text(
                          'QR Dispenser :  ojfdfjkdn3ieiu4934inknfknfdnfkndfkc',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: CustomButton(
                            text: 'Pair',
                            color: Color(0xFF002242),
                            onPressed: () {
                              setState(() {
                                showBottomSheet = !showBottomSheet;
                              });
                            }),),
                  ],
                ),
              )
            : null);
  }
}
