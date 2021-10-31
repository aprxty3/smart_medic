import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_hospital/page/login.dart';
import 'package:smart_hospital/util/session.dart';

Dialog(_context, msg, {title}) {
  showDialog(
    context: _context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title ?? 'Perhatian!'),
        content: Text(msg),
      );
    },
  );
}

//Template button lebar untuk posisi bottomNavigator
Widget largetButton(
    {String label = "Simpan", IconData iconData, Function onPressed}) {
  iconData = iconData ?? Icons.done_all;
  return Container(
    height: 60,
    width: double.infinity,
    child: new RaisedButton.icon(
        disabledColor: Colors.grey,
        label: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        elevation: 4.0,
        icon: Icon(iconData, color: Colors.white),
        color: Colors.blue,
        onPressed: onPressed),
  );
}
