import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  const MyFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextFormField(
        cursorColor: Colors.purple[300],
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,),
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
      
          focusedBorder: OutlineInputBorder(

            borderSide:  BorderSide(color: Colors.purple[700]!,width: 2),
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
        ),
      ),
    );
  }
}
