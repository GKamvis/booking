import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // search bar
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Where you wanna go?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      CupertinoIcons.search,
                      size: 30,
                    ),
                  ],
                ),
              ),

              // app functions
              SizedBox(
                height: 150, // Adjust the height based on your needs
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                                'assets/images/app_services/s${index + 1}.png'),
                            width: 100,
                            height: 100,
                          ),
                          const Text('Hotel'),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // hotels list
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Hotels"),
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 300, // Adjust the height based on your needs
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                                'assets/images/hotels/h${index + 1}.png'),
                            width: 152,
                            height: 251,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Hotel Name",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Text("499\$/night"),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),

              // hot deals

              const Row(
                children: [
                  Text(
                    "  Hot Deals ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 250, // Adjust the height based on your needs
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(223, 238, 229, 229),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/hotels/hotel.jpg'),
                                fit: BoxFit.cover,
                                width: 370,
                                height: 200,
                              ),
                            ),
                          ),
                          const Row(
                            children: [
                              Text(
                                "25 % OFF",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ), 
                              SizedBox(width: 40,),          
                              Text(
                                "Hotel Name",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                               SizedBox(width: 40,),     
                               Text("499\$/night"),
                         
                             
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
