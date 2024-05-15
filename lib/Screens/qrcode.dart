import 'package:flutter/material.dart';

class QrCode extends StatefulWidget {
  const QrCode({super.key});

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          titleSpacing: -1,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text('Номер карты', style: TextStyle(fontSize: 20)),
          leadingWidth: 100,
          leading: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Закрыть',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)))),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: 'THE',
                  style: TextStyle(
                            letterSpacing: 14,
                            height: 0,
                            fontSize: 55,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w100),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'FLEX',
                        style: TextStyle(
                            letterSpacing: 14,
                            height: 0,
                            fontSize: 55,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w600),
                    ),
                    
                  ],
                  
                ),   
              ),
              SizedBox( height: 150,
              ),
              Image.asset('assets/icons/qrcode.jpg', height: 80 ),
              SizedBox(height: 25,
              ),
              Text('324544', 
              style: TextStyle(fontSize: 16
              ),
              ), 
              Text('Губин Евгений Александрович', style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    ),
    );
  }
}
