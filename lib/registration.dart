import 'package:flutter/material.dart';
import '../login.dart';

class Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegistrationState();
  }
}

class RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff7FD3ED),
        useMaterial3: true,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color(0xffC5C4C4),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                highlightColor: const Color(0xffffffff),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment(45, 120),
                transform: GradientRotation(-3.3),
                colors: <Color>[
                  Color(0xFFFFFFFF),
                  Color(0xff2F5BF9),
                  Color(0xff009ACB),
                  Color(0xff2DE58D),
                  Color(0xffF564E7),
                  Color(0xffF53B3B),
                ], // Gradient from https://learnui.design/tools/gradient-generator.html
              ),
            ),
          ),
          shadowColor: Theme.of(context).colorScheme.shadow,
        ),
        body: SingleChildScrollView(
            reverse: true,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                  minWidth: MediaQuery.of(context).size.width),
              child: IntrinsicHeight(
                  child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment(45, 120),
                          transform: GradientRotation(-3.3),
                          colors: <Color>[
                            Color(0xFFFFFFFF),
                            Color(0xff2F5BF9),
                            Color(0xff009ACB),
                            Color(0xff2DE58D),
                            Color(0xffF564E7),
                            Color(0xffF53B3B),
                          ], // Gradient from https://learnui.design/tools/gradient-generator.html
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40,
                              top: 30,
                              right: 40,
                              bottom: 30,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/loginlogo.png")
                              ],
                            ),
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                  bottom: 20,
                                ),
                                child: Text(
                                  "Registration",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontFamily: "Inter"),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 20,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Nama',
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 20,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Email',
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 20,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Password',
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 20,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Ulangi Password',
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 20,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Nomor Telepon',
                              ),
                            ),
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                  )
                ],
              )),
            )),
      ),
    );
  }
}
