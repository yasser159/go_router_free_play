import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Image(
                                  image: AssetImage(
                                    'images/handychan_logo.jpg',
                                  ),
                                  height: 30,
                                  fit: BoxFit.fitHeight,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: const Text('Handyman Services'),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 90.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text('(604) 412 4118'),
                                    const SizedBox(width: 20),
                                    Text('Daily: 10am - 6pm'),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 90.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    const Text('Personalize to you'),
                                    const SizedBox(width: 10),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      color: Colors.white,
                                      width: 220,
                                      child: DropdownButton<String>(
                                        value: 'I am a...',
                                        icon: const Icon(
                                            Icons.keyboard_arrow_down),
                                        iconSize: 24,
                                        elevation: 10,
                                        focusColor: Colors.white,

                                        style: const TextStyle(
                                            color: Colors.black),
                                        underline: Container(),
                                        // Set the underline to an empty Container

                                        onChanged: (String? newValue) {},
                                        items: <String>[
                                          'I am a...',
                                          'Tenant / Homeowner',
                                          'Realtor / Property Manager',
                                          'Business Owner / Manager',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        dropdownColor: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 40,
                                      child: ElevatedButton(
                                        onPressed: () => context.go('/page2'),
                                        child: const Text('Book Now'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 600, top: 100),
                child: Container(
                  // color: Colors.green,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              const Text(
                                "\"D1 City Name\"'s #1",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Licensed Handyman",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                //height: 100,
                //color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //textfield
                    Container(
                      color: Colors.white,
                      width: 220,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Zip Code / City Name',
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      color: Colors.white,
                      width: 120,
                      child: DropdownButton<String>(
                        value: 'Property Type',
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconSize: 24,
                        elevation: 10,
                        focusColor: Colors.white,

                        style: const TextStyle(color: Colors.black),
                        underline: Container(),
                        // Set the underline to an empty Container

                        onChanged: (String? newValue) {},
                        items: <String>[
                          'Property Type',
                          'Commercial',
                          'Residential',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        dropdownColor: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      color: Colors.white,
                      width: 150,
                      child: DropdownButton<String>(
                        value: 'Task',
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconSize: 24,
                        elevation: 10,
                        focusColor: Colors.white,

                        style: const TextStyle(color: Colors.black),
                        underline: Container(),
                        // Set the underline to an empty Container

                        onChanged: (String? newValue) {},
                        items: <String>[
                          'Task',
                          'Handyman',
                          'Painting',
                          "Plumbing",
                          "Electrical",
                          "Carpentry",
                          "Outdoor",
                          "Drywall",
                          "Delivery \& Install",
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        dropdownColor: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () => context.go('/page2'),
                        child: const Text("Book from \$195 (Service Call)"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
