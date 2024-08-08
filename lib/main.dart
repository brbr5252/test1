import 'package:flutter/material.dart';
import 'users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginPage());
  }
}

bool passEye = true;

List<User> users = [
  User(email: 'HashPlus@gmail.com', password: "12345"),
];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "MyGym",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w100),
          ),
          backgroundColor: Color.fromARGB(255, 2, 105, 189),
          centerTitle: true,
          leading: Icon(
            Icons.clean_hands_rounded,
            color: Colors.white,
            size: 30,
          ),
          actions: [
            Icon(
              Icons.access_time_filled,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 18,
            ),
            Icon(
              Icons.account_box_outlined,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Login Page",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/LoginPage.jpeg',
                    width: 250,
                    height: 150,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              label: Text("UserName"),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          obscureText: passEye,
                          decoration: InputDecoration(
                              label: Text("Password"),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passEye = !passEye;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove_red_eye,
                                ),
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            print("Code is working");
                          },
                          child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.blue,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.login,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )

        // Center(child:Text("Login Page", style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 56, 127, 185)),) ),

        );
  }
}
