import 'package:flutter/material.dart';
import 'package:flutter_application_50/main.dart';



class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        //padding: const EdgeInsets.all(2),
        child: ListView(
          children: [
            Image.asset(
              'assets/img/One.jpg',
              /*fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,*/
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'SING IN',
                  style: TextStyle(
                      color: Color.fromRGBO(12, 138, 125, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 35),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome! Nice to see you:-)',
                  style: TextStyle(
                      color: Color.fromRGBO(12, 138, 125, 1), fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login',
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 24)),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff0C8A7D),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Home');
                    // Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(builder: (context) => MyApp()));
                    //  print(nameController.text);
                    //  print(passwordController.text);
                  },
                )),
            Image.asset(
              'assets/img/Two.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
