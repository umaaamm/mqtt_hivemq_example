import 'dart:io';
import 'dart:typed_data';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:test_mqtt_client/utils.dart';
import 'package:typed_data/typed_buffers.dart';

class MQTTClientWrapper {

  MqttServerClient? client;

  MqttCurrentConnectionState connectionState = MqttCurrentConnectionState.IDLE;
  MqttSubscriptionState subscriptionState = MqttSubscriptionState.IDLE;

  // using async tasks, so the connection won't hinder the code flow
  void prepareMqttClient() async {
    _setupMqttClient();
    await _connectClient();
    _subscribeToTopic('Dart/Mqtt_client/testtopic');
    _publishMessage('Hello');
  }

  void sendMessage(String pesan){
    _publishMessage(pesan);
  }

  // waiting for the connection, if an error occurs, print it and disconnect
  Future<void> _connectClient() async {
    try {
      print('client connecting....');
      connectionState = MqttCurrentConnectionState.CONNECTING;
      await client?.connect('12345678', '12345678');
    } on Exception catch (e) {
      print('client exception - $e');
      connectionState = MqttCurrentConnectionState.ERROR_WHEN_CONNECTING;
      client?.disconnect();
    }

    // when connected, print a confirmation, else print an error
    if (client?.connectionStatus?.state == MqttConnectionState.connected) {
      connectionState = MqttCurrentConnectionState.CONNECTED;
      print('client connected');
    } else {
      print(
          'ERROR client connection failed - disconnecting, status is ${client?.connectionStatus}');
      connectionState = MqttCurrentConnectionState.ERROR_WHEN_CONNECTING;
      client?.disconnect();
    }
  }

  void _setupMqttClient() {
    client = MqttServerClient.withPort('92026fedf84e4428a73c218274c62e31.s2.eu.hivemq.cloud', 'sssss',8883);
    // the next 2 lines are necessary to connect with tls, which is used by HiveMQ Cloud
    client?.secure = true;
    client?.securityContext = SecurityContext.defaultContext;
    client?.keepAlivePeriod = 20;
    client?.onDisconnected = _onDisconnected;
    client?.onConnected = _onConnected;
    client?.onSubscribed = _onSubscribed;
  }

  void _subscribeToTopic(String topicName) {
    print('Subscribing to the $topicName topic');
    client?.subscribe(topicName, MqttQos.atMostOnce);
    client?.updates?.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final recMess = c![0].payload as MqttPublishMessage;
      var message = MqttPublishPayload.bytesToStringAsString(recMess.payload.message);

      print('YOU GOT A NEW MESSAGE:');
      print(message);
    });
  }

  void _publishMessage(String message) {
    Uint8List data = Uint8List.fromList(message.codeUnits);
    Uint8Buffer dataBuffer = Uint8Buffer();
    dataBuffer.addAll(data);

    client?.publishMessage('Dart/Mqtt_client/testtopic', MqttQos.exactlyOnce, dataBuffer);
  }

  // callbacks for different events
  void _onSubscribed(String topic) {
    print('Subscription confirmed for topic $topic');
    subscriptionState = MqttSubscriptionState.SUBSCRIBED;
  }

  void _onDisconnected() {
    print('OnDisconnected client callback - Client disconnection');
    connectionState = MqttCurrentConnectionState.DISCONNECTED;
  }

  void _onConnected() {
    connectionState = MqttCurrentConnectionState.CONNECTED;
    print('OnConnected client callback - Client connection was sucessful');
  }

}