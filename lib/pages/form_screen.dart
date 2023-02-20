import 'package:flutter/material.dart';


class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("User Form"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                  height: 12.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        nameController.text = value!;
                        if (value.isEmpty || value == ' ') {
                          return "Username tidak boleh kosong!";
                        }
                        return null;
                      },
                      cursorColor: Colors.teal[300],
                      decoration: myFormDecoration("Input Ussername"),
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                        controller: emailController,
                        validator: (value) {
                          emailController.text = value!;
                          if (emailController.text.isEmpty) {
                            return "Tidak Boleh Kosong";
                          } else if (!emailController.text
                              .contains('@gmail.com')) {
                            return "Email harus mengandung karakter '@'";
                          }
                          return null;
                        },
                        cursorColor: Colors.teal[300],
                        decoration: myFormDecoration("Input Your Email")),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  SwitchListTile(
                    value: value,
                    onChanged: (newValue) => setState(() {
                      value = newValue;
                    }),
                    contentPadding: EdgeInsets.all(4),
                    title: Text("Is beginner?",
                    style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).indicatorColor,
                    ),
                    onPressed: () {
                      final form = formKey.currentState!;
                      bool isValid = form.validate();
                      if (isValid) {
                        print(emailController.text);
                        print(nameController.text);
                        print(value);
                      } else {
                        print(isValid);
                        print("tidak valid");
                        print(emailController.text);
                        print(nameController.text);
                        print(value);
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration myFormDecoration(String labelText) {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.teal[200]!, width: 2),
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.teal[200]!, width: 2),
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.teal[700]!, width: 2.5),
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: Colors.red,
          )),
      labelText: labelText,
      labelStyle:
          TextStyle(color: Colors.tealAccent[100], fontWeight: FontWeight.w300),
    );
  }
}
