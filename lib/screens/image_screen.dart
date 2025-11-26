import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text( "Images"),
      ),
      body: SafeArea(
              child:SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset('assets/images/image1.jpg'),
                    Image.asset('assets/images/image2.jpg'),
                    Image.network('https://c4mpus.com/assets/img/new_heroImage.png'),
                    Image.network('https://c4mpus.com/assets/img/AntiPlag.png'),
                    Image.network("https://c4mpus.com/assets/img/SMS.png"),
                    Image.network("https://c4mpus.com/assets/img/LMS.png"),
                    Image.network("https://c4mpus.com/assets/img/AMS.png"),
                  ],
                ),
              )
      ),
    );
  }
}
