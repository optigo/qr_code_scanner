import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

// const bgColor = Color(0xfffafafa);

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //we are using GetX so we have to change this material app into the getmaterialapp

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "QR Scanner",
          style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            //Show QR Code Here

            QrImageView(
              data: ''
              , size: 150
              , version: QrVersions.auto
            ),

            //QrImage(qrCode)

            const Text(
              "Scanned Result",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "RESULT",
              style: TextStyle(
                  color: Colors.black87, fontSize: 16, letterSpacing: 1),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {},
                child: const Text(
                  "Copy",
                  style: TextStyle(
                      color: Colors.black87, fontSize: 16, letterSpacing: 1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
