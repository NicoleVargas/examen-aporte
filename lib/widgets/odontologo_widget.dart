import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/odontologo.dart';

class OdontologoWidget extends StatelessWidget {
  final Odontologo odontologo;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const OdontologoWidget(
      {Key? key,
      required this.odontologo,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(odontologo.id);
      },
      onLongPress: () {
        onLongPress(odontologo.id);
      },
      onTap: () {
        onTap(odontologo);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                decoration: BoxDecoration(
                    color: odontologo.read ? Colors.transparent : primaryColor,
                    shape: BoxShape.circle),
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(odontologo.nombre,
                      style: dateTextStyle),
                  Text(odontologo.nombre, style: fromTextStyle),
                  Text(odontologo.apellido, style: subjectTextStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
