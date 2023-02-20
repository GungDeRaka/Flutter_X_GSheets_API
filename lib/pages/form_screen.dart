import 'package:flutter/material.dart';

import '../widgets/my_form_field.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Form"),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              child: Column(
                children: [
                  MyFormField()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
