import 'package:flutter/material.dart';
import 'package:portfolio/components/my_Button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu Portfólio"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey,
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 2)
              ], shape: BoxShape.circle, color: Colors.white),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            MyButton(
              boxColor: Colors.white,
              onPress: () {},
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.06,
              text: "Aplicativo",
              fontColor: Colors.black,
              fontSize: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            MyButton(
              boxColor: Colors.white,
              onPress: () {},
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.06,
              text: "Aplicativo",

              fontColor: Colors.black,
              fontSize: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            MyButton(
              boxColor: Colors.white,
              onPress: () {},
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.06,
              text: "Aplicativo",
              fontColor: Colors.black,
              fontSize: 20,
            )
          ],
        ),
      ),
    );
  }
}
