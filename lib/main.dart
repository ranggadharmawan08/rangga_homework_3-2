/* Nama   : Rangga Dharmawan
   Kelas  : 1B Mobile Application Development
   Homework #3-2
*/

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage(), theme: ThemeData(primarySwatch: Colors.green),);
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 115),
              child: 
              Text(
              'NEW RECIPE',
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
              ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 0, bottom:10),
            child: TextButton(
              onPressed: () {
                print('Tombol Close diklik');

              },
              child: Text(
                'Close',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.redAccent[200],
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: SafeArea(
      child: Container(
  child: Column(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 0),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.redAccent[200],
          ),
          child: Row(
            children: [
              Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Super Cool you are creating a new recipe!',
                        style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text('Let\'s get started',
                        style: TextStyle(
                        color: Colors.white
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Column(
        children: [
        Padding(
          padding: EdgeInsets.only(left: 18, top: 38),
            child: Row(children: [
              Text('Give your recipe a name',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              ),
          ],),
        )
      ],),
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18, top: 10, right:18),
            child: TextField (
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(),
                labelText: 'Masukan Nama Menu',
                labelStyle: TextStyle(
                fontSize: 13
              )
              ),
            ),
          )
        ],
      ),
      Column(
        children: [
        Padding(
          padding: EdgeInsets.only(left: 18, top: 20),
            child: Row(children: [
              Text('Estimasi Waktu Memasak (menit)',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              ),
          ],),
        )
      ],),
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18, top: 10, right:18),
            child: TextField (
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(),
                labelText: 'Masukan Waktu Pembuatan',
                labelStyle: TextStyle(
                fontSize: 13
              )
              ),
            ),
          )
        ],
      ),
      Column(
        children: [
        Padding(
          padding: EdgeInsets.only(left: 18, top: 20),
            child: Row(children: [
              Text('Deskripsi',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              ),
          ],),
        )
      ],),
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18, top: 10, right:18),
            child: TextField(
              decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 0, top:0 , right:0, bottom:40),
              errorBorder: OutlineInputBorder(),
              labelText: 'Masukan Deskripsi',
              labelStyle: TextStyle(
                fontSize: 13
              )
              ),
            ),

          )
        ],
      ),
      Column(
        children: [
        Padding(
          padding: EdgeInsets.only(left: 18, top: 20),
            child: Row(children: [
              Text('Resep, bahan dan langkah',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              ),
          ],),
        )
      ],),
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18, top: 10, right:18),
            child: TextField (
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 0, top:0 , right:0, bottom:40),
                errorBorder: OutlineInputBorder(),
                labelText: 'Masukan Resep, Bahan dan Cara Pembuatan',
                labelStyle: TextStyle(
                fontSize: 13
              )
              ),
            ),
          )
        ],
      ),
    ],
  ),
),
      ),
      ),


       bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          onPressed: () {
            // Handle button press
            print('Tombol Add diklik');
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 55, 55)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), 
        ),
      ),
      minimumSize: MaterialStateProperty.all<Size>(Size(150, 50)),
    ),
          child: Text('Add Menu',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}