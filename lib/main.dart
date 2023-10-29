import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  String value = '';
  var _firstname = TextEditingController();
  var _lastname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => secondpage()));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10, top: 20, right: 20),
          child: Column(
            children: [
              TextField(
                controller: _firstname,
                decoration: InputDecoration(
                    labelText: 'First Name',
                    icon: Icon(Icons.account_circle),
                    hintText: 'Type ur Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  controller: _lastname,
                  decoration: InputDecoration(
                      labelText: 'Last Name',
                      icon: Icon(Icons.account_circle),
                      hintText: 'Type ur Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
              ),
              SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {
                          var name1 = _firstname.text;
                          var name2 = _lastname.text;
                          setState(() {
                            value = '$name1$name2';
                          });
                        },
                        child: Text('SUBMIT')),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  value,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
