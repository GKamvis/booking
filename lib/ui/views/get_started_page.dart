import 'package:flutter/material.dart';
import 'package:myapp/ui/views/bottom_nav_bar.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            // Group photos
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // photos
                Column(
          
                  children: [
                    Image(
                        image: AssetImage("assets/images/splash_group/sg2.png")),
                        SizedBox(height: 20,),
                    Image(
                        image: AssetImage("assets/images/splash_group/sg3.png")),
                  ],
                ),
                Column(
                  children: [
                    Image(
                        image: AssetImage("assets/images/splash_group/sg5.png")),
                                              SizedBox(height: 20,),
        
                    Image(
                        image: AssetImage("assets/images/splash_group/sg6.png")),
                  ],
                ),
                Column(
                  children: [
                    Image(
                        image: AssetImage("assets/images/splash_group/sg4.png")),
                                              SizedBox(height: 20,),
         
                    Image(
                        image: AssetImage("assets/images/splash_group/sg1.png")),
                  ],
                ),
              ],

            ),
            //about text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 90 , vertical: 20),
              child: Text("Easy Way to book your hotel with us!" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),

        
            // text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 90),
              child: Text("Also book flight ticket , places , food and many more." , style: TextStyle(fontSize: 20,  color:Colors.grey , fontWeight: FontWeight.w400),),
            ),
                                                          const SizedBox(height: 20,),

            InkWell(
  onTap: () {
    // Navigate to the next screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyBottomNavigation()),
    );
  },
  child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          color: Colors.blueAccent,
          offset: Offset(0, 4),
          blurRadius: 10,
        ),
      ],
    ),
    child: const Text(
      '   Get Started   ',
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  ),
)
        
            // get started button
          ],
        ),
      ),
    );
  }
}
