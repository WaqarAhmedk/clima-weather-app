import 'package:clima/constants/constants.dart';
import 'package:flutter/material.dart';
import '../services/location.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  void getCurrentLocation() async {
    Location loc = new Location();
    await loc.getLocation();
    print(loc.latitude);
    print(loc.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Clima",
          style: kappbartitlestyle,
        ),
        centerTitle: true,
      ),
    );
  }
}
