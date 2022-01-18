// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'language.dart';
import 'instructors.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://st3.depositphotos.com/2492691/13346/i/950/depositphotos_133461562-stock-photo-man-with-headset-in-office.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  "Hello Justin",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Langar"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 3, 15, 3),
                      child: Icon(Icons.search),
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(hintText: "search..."),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: SizedBox(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: PageScrollPhysics(),
                  itemBuilder: (context, num) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width - 20,
                      child: Card(
                        color: Colors.teal[200],
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text("20 Point"),
                                  Spacer(),
                                  Icon(Icons.language),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text('''Learng english
    verb'''),
                                  Spacer(),
                                  Text("Level 1"),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text("30 Minute"),
                                  Spacer(),
                                  Text('''Date
    2021''')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              children: const [
                Text(
                  "Recommended Courses",
                  style: TextStyle(
                      fontFamily: "Langer",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "View all",
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Language(
                    countryName: "Learn Canadian",
                    countryImage: Image.asset("images/countries/USA.png"),
                  ),
                  Language(
                    countryName: "Learn Chinese",
                    countryImage: Image.network(
                        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fd6ce0no7ktiq.cloudfront.net%2Fimages%2Fstickers%2F752.png&f=1&nofb=1"),
                  ),
                  Language(
                    countryName: "Learn Taiwanese",
                    countryImage: Image.asset("images/countries/China.png"),
                  ),
                  Language(
                    countryName: "Learn Mexican",
                    countryImage: Image.asset("images/countries/Taiwan.png"),
                  )
                ], //columns of countries
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
              child: Text(
                "Instructors",
                style: TextStyle(
                    fontFamily: "Langer",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Instructors(
                      instructorFace: Image.network(
                          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.crushpixel.com%2Fbig-static7%2Fpreview4%2Fshocked-expression-171785.jpg&f=1&nofb=1"),
                      instructorName: "Melinda"),
                  SizedBox(
                    height: 400,
                    width: 10,
                  ),
                  Instructors(
                      instructorFace: Image.network(
                          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fthumbs.dreamstime.com%2Fb%2Fbusinessman-portrait-353770.jpg&f=1&nofb=1"),
                      instructorName: "Jackson"),
                  SizedBox(
                    height: 400,
                    width: 10,
                  ),
                  Instructors(
                      instructorFace: Image.network(
                          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fc%2Fcc%2FTed_Bundy_headshot.jpg&f=1&nofb=1"),
                      instructorName: "Ted Bundy")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
