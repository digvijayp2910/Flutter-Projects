import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Form Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var username = '';
  var password = '';
  var age = '';



  final formkey = GlobalKey<FormState>();

  void saveData(){
    if(formkey.currentState!.validate()){
      // formkey.currentState!.save();

      final url = Uri.https("flutproj-4f29d-default-rtdb.firebaseio.com","my-list.json");
      http.post(url,headers: {'Content-Type':'application/json',},body: json.encode(
          { 'username': username, 'password' : password , 'Age' : age  }) );
      formkey.currentState!.reset();
  } }

  @override
  Widget build(BuildContext context) {
    List<int> a = [1, 2, 3, 4];
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(autofillHints: ["Digvijay@iq.com"],
                maxLength: 50,
                onChanged: (value){username=value;},
                validator: (value) {

                },
                decoration: const InputDecoration(
                    label: Text(
                      "UserName",
                    )),
              ),
              TextFormField(
                maxLength: 15,
                onChanged: (value){password=value;},
                validator: (value) {},
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    label: Text(
                      "password",
                    )),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Expanded(
                  child: TextFormField(
                    validator: (value) {},
                    onChanged: (value){age=value;},
                    decoration: const InputDecoration(
                        label: Text(
                          "Age",
                        )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),

                Expanded(
                  child: DropdownButtonFormField(
                    items: [
                      for (final i in a)
                        DropdownMenuItem(
                            value: i.toString(),
                            child: Row(children: [
                              Container(
                                height: 16,
                                width: 16,
                                color: Colors.red,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(i.toString())
                            ]))
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ]),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {formkey.currentState!.reset();}, child: const Text("Reset")),
                  ElevatedButton(onPressed: saveData, child: const Text("Submit"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
