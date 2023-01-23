import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formRegisterKey = GlobalKey<FormState>();
  late TextEditingController _mail;
  late TextEditingController _password;
  late TextEditingController _name;

  @override
  void initState() {
    _mail = TextEditingController();
    _password = TextEditingController();
    _name = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _mail.dispose();
    _password.dispose();
    _name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/register.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Gap(30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Center(
                    child: Text(
                      "Register Account",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Form(
                key: _formRegisterKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 5),
                      child: Card(
                        elevation: 5,
                        child: TextFormField(
                          controller: _name,
                          validator: (String? value) => value!.isEmpty
                              ? "Name field can not be empty"
                              : null,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide.none),
                              hintText: "Name",
                              prefixIcon:
                                  const Icon(Icons.person_outline_outlined)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                      child: Card(
                        elevation: 5,
                        child: TextFormField(
                          controller: _mail,
                          validator: (String? value) => value!.isEmpty
                              ? "Mail field can not be empty"
                              : null,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: "Mail",
                              prefixIcon: const Icon(Icons.mail_outline)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 10),
                      child: Card(
                        elevation: 5,
                        child: TextFormField(
                          controller: _password,
                          validator: (String? value) => value!.isEmpty
                              ? "Password field can not be empty"
                              : null,
                          obscureText: true,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: "Password",
                              prefixIcon: const Icon(Icons.lock_outline),
                              suffixIcon:
                                  const Icon(Icons.remove_red_eye_outlined)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      backgroundColor: Colors.orange,
                      textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500) // foreground
                      ),
                  onPressed: () {},
                  child: const Text('SIGN UP'),
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "----   Or Continue With   ----",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 10,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/google_logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Gap(15),
                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 8,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/facebook_logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account ? "),
                  Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
