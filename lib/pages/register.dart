// import 'package:flutter/review.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Halaman Register",
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                top: 50.0,
                right: 50.0,
              ),
              child: Image.asset("assets/image.png", width: 250),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Register",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(0, 40, 73, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Please register to login.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(0, 40, 73, 1),
              ),
            ),
          ),
          RegisterForm(),
        ],
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RegisterForm> {
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final noPhoneController = TextEditingController();
  bool togglePass = true;
  bool reminder = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: TextField(
            controller: usernameController,
            decoration: InputDecoration(
              labelText: "Username",
              hintText: "masukan Username",
              prefixIcon: Icon(Icons.person_2_outlined, color: Colors.blueGrey),
              filled: true,
              fillColor: const Color.fromARGB(255, 237, 237, 237),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
            keyboardType: TextInputType.name,
            onSubmitted: (value) {
              print(value);
            },
            onChanged: (value) {
              print(value);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          child: TextField(
            controller: noPhoneController,
            decoration: InputDecoration(
              labelText: "Mobile Number",
              hintText: "Masukkan Number",
              prefixIcon: Icon(Icons.call_outlined, color: Colors.blueGrey),
              filled: true,
              fillColor: const Color.fromARGB(255, 237, 237, 237),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
            keyboardType: TextInputType.phone,
            onSubmitted: (value) {
              print(value);
            },
            onChanged: (value) {
              print(value);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(color: const Color.fromRGBO(0, 40, 73, 1)),
              hintText: "Masukkan Password",
              prefixIcon: const Icon(
                Icons.lock_outline,
                color: Colors.blueGrey,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    togglePass = !togglePass;
                  });
                },
                icon: Icon(
                  togglePass ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 237, 237, 237),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
            obscureText: togglePass,
            onSubmitted: (value) {
              print(value);
            },
            onChanged: (value) {
              print(value);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reminder me next time",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(0, 40, 73, 1),
                ),
              ),
              Switch(
                value: reminder,
                onChanged: (value) {
                  setState(() {
                    reminder = value;
                  });
                },
                activeTrackColor: const Color.fromRGBO(0, 40, 73, 1),
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey.shade300,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ElevatedButton(
            onPressed: () {
              print("Sign Up");
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 24, 77, 146),
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text("Sign Up"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have account?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(133, 88, 88, 88),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 40, 73, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}