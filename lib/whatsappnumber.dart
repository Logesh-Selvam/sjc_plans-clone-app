import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppNumber extends StatefulWidget {
  final String phoneNumber;

  WhatsAppNumber(this.phoneNumber);

  @override
  State<WhatsAppNumber> createState() => _WhatsAppNumberWidgetState();
}

class _WhatsAppNumberWidgetState extends State<WhatsAppNumber> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {
          _sendMessageToWhatsApp(widget.phoneNumber);
        },
        icon: Icon(
          Icons.message,
          color: Colors.green,
        ),
        label: Text(
          widget.phoneNumber,
          style: TextStyle(
            color: Colors.green,
          ),
        ));
  }

  _sendMessageToWhatsApp(String phoneNumber) async {
    final whatsappUrl = 'https://wa.me/$phoneNumber';
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }
}
