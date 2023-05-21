import 'package:flutter/material.dart';
import 'package:ratexim/registration.dart';
import '../login.dart';

class Registration2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Registration2State();
  }
}

class Registration2State extends State<Registration2> {
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
                    MaterialPageRoute(builder: (context) => Registration()),
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
                              top: 60,
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
                          const Row(
                            children:  [
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
                                hintText: 'Kode Pos',
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
                                hintText: 'Alamat',
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
                                hintText: 'Jenis Usaha',
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
                                hintText: 'Nama Usaha',
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
                                hintText: 'Posisi',
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
                                hintText: 'Jabatan',
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
                                hintText: 'Alamat Usaha',
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
                                hintText: 'Nomor Telepon Kantor',
                              ),
                            ),
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
                                debugPrint("Kontol memek");
                                // debugPrint(await http.read(Uri.http(
                                //     'it.iki.id:9999', 'v1/auth/login')));
                              },
                              child: const Text('Daftar',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontFamily: "Inter")),
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
