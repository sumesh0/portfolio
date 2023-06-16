import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final name = TextEditingController();
  final pass = TextEditingController();
  final name1 = 'Sumesh';
  final pass1 = 'Mahadev';

  final Shader headerGradient = const LinearGradient(colors: [
    Color.fromARGB(255, 1, 242, 255),
    Color.fromARGB(255, 33, 170, 97)
  ]).createShader(const Rect.fromLTWH(0, 0, 200, 70));

  @override
  void dispose() {
    name.dispose();
    pass.dispose();// TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print(name);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Welcome to my Portfolio"),
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Enter name and password",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = headerGradient),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: name,
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text("Enter Your name"),
                  hintText: 'Rajasthan ki raunak',
                ),
              ),
              TextField(
                controller: pass,
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text("Password"),
                  hintText: 'No hint',
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () {
           if(name.text == name1 && pass.text == pass1 ) {
             setState(() {
               Navigator.pushNamed(context, 'home');
             });
           }
           else
             {
               showDialog(
                 context: context,
                 builder: (ctx) => AlertDialog(
                   title: const Padding(
                     padding: EdgeInsets.only(left: 60),
                     child: Text("Invalid Input",
                         style: TextStyle(
                           color: Colors.red,
                         )),
                   ),
                   content: const Text("  Enter correct name and pass"),
                   actions: [
                     TextButton(
                       onPressed: () {
                         Navigator.pop(ctx);
                       },
                       child: const Text("Okay"),
                     )
                   ],
                 ),
               );
             }
                  },
                  child: const Text("Processed"))
            ],
          ),
        ),
      ),
    );
  }
}
