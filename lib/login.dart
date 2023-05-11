import 'package:flutter/material.dart';
import '../introslider.dart';
import '../registration.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
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
                highlightColor: const Color(0xfffffff),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CarouselWithIndicatorDemo()),
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
                                  "Login",
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
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                  bottom: 20,
                                ),
                                child: Text(
                                  "Lupa Password ?",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff779DFE),
                                      fontFamily: "Inter"),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 20,
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide.none,
                                backgroundColor: const Color(0xff1D51FE),
                                minimumSize: const Size.fromHeight(50), // NEW
                              ),
                              onPressed: () {
                                debugPrint('Kontol');
                              },
                              child: const Text('Masuk',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontFamily: "Inter")),
                            ),
                          ),
                          Row(children: const <Widget>[
                            Expanded(child: Divider()),
                            Text('Atau',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff6F7376),
                                    fontFamily: "Inter")),
                            Expanded(child: Divider()),
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40,
                              top: 30,
                              right: 40,
                              bottom: 40,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('Belum punya akun? ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff6F7376),
                                        fontFamily: "Inter")),
                                InkWell(
                                  child: const Text('Registrasi sekarang',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                          color: Color(0xff1D51FE),
                                          fontFamily: "Inter")),
                                  onTap: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Registration()),
                                    )
                                  },
                                )
                              ],
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
