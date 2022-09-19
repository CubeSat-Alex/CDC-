import 'package:flutter/material.dart';
import '../class/general.dart';


class Payload extends StatefulWidget {
  Payload(this.data, {Key? key}) : super(key: key);

  General data;
  @override
  State<Payload> createState() => _PayloadState();
}

class _PayloadState extends State<Payload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('selected communication is :'),),
      body: widget.data.payloadMission == 'Imager'?        const ImagerPayloadScreen()
      :     widget.data.payloadMission == 'Communication'? const CommunicationPayloadScreen()
      :     widget.data.payloadMission == 'Weather'?       const WeatherPayloadScreen()
      :                                                    const RemoteSensingPayloadScreen(),
    );
  }
}



class ImagerPayloadScreen extends StatefulWidget {
  const ImagerPayloadScreen({Key? key}) : super(key: key);

  @override
  State<ImagerPayloadScreen> createState() => _ImagerPayloadScreenState();
}

class _ImagerPayloadScreenState extends State<ImagerPayloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("imager")
      ],
    );
  }
}


class CommunicationPayloadScreen extends StatefulWidget {
  const CommunicationPayloadScreen({Key? key}) : super(key: key);

  @override
  State<CommunicationPayloadScreen> createState() => _CommunicationPayloadScreenState();
}

class _CommunicationPayloadScreenState extends State<CommunicationPayloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("communication")
      ],
    );
  }
}


class WeatherPayloadScreen extends StatefulWidget {
  const WeatherPayloadScreen({Key? key}) : super(key: key);

  @override
  State<WeatherPayloadScreen> createState() => _WeatherPayloadScreenState();
}

class _WeatherPayloadScreenState extends State<WeatherPayloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("weather")
      ],
    );
  }
}


class RemoteSensingPayloadScreen extends StatefulWidget {
  const RemoteSensingPayloadScreen({Key? key}) : super(key: key);

  @override
  State<RemoteSensingPayloadScreen> createState() => _RemoteSensingPayloadScreen();
}

class _RemoteSensingPayloadScreen extends State<RemoteSensingPayloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("remoteSensing")
      ],
    );
  }
}


