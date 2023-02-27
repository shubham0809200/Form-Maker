import 'package:flutter/material.dart';
import 'package:form_maker/form_maker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Maker'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///
              /// Form Maker [FormElement.name] widget
              ///
              FormElement.name(
                onTap: () {
                  // Do something...
                },
              ),

              ///
              /// Form Maker [FormElement.email] widget
              ///
              FormElement.email(),
              FormElement.phone(),
              FormElement.address(),
            ],
          ),
        ));
  }
}
