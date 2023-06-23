import 'package:flutter/material.dart';
import 'package:test_mqtt_client/mqtt_client_wrapper.dart';

class BerandaPages extends StatefulWidget {
  const BerandaPages({super.key});

  @override
  State<BerandaPages> createState() => _BerandaPagesState();
}

class _BerandaPagesState extends State<BerandaPages> {
  MQTTClientWrapper newclient = new MQTTClientWrapper();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text("hahaha"),
              ElevatedButton(
                  onPressed: () {
                    newclient.prepareMqttClient();
                  },
                  child: Text("test")),
              ElevatedButton(
                  onPressed: () {
                    newclient.sendMessage('ini adalah test');
                  },
                  child: Text("publish"))
            ],
          ),
        ),
      ),
    );
  }
}
