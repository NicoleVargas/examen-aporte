import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/odontologo.dart';

class DetailScreen extends StatelessWidget {
  final Odontologo odontologo;

  const DetailScreen({Key? key, required this.odontologo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(odontologo.nombre),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('From: ${odontologo.apellido}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text(odontologo.experiencia, style: subjectTextStyle),
              const SizedBox(height: 5.0),
              Text(odontologo.ciudad, style: dateTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),

            ],
          ),
        ));
  }
}
