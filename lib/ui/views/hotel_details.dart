import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
            // photo 
            Stack( 
              fit: StackFit.loose,
                          children:<Widget>[
                               Hero(
                                 tag: HotelDetails,
                                 child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                                   child: Container(
                                                    
                                                        decoration: BoxDecoration(
                                                          color: const Color.fromARGB(223, 238, 229, 229),
                                                          borderRadius: BorderRadius.circular(20.0),
                                                        ),
                                                        child: const Image(
                                                          image: AssetImage(
                                 'assets/images/hotels/hotel.jpg'),
                                                          fit: BoxFit.cover,
                                                          width: double.infinity,
                                                          height: 200,
                                                        ),
                                                      ),
                                                    ),
                               ),
                        
                     Row(
                       mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                       children: [
                         IconButton(
                           onPressed: () {
                             Navigator.pop(context);
                           },
                           icon: const Icon(CupertinoIcons.back , color: Colors.white, size: 23,),
                        
                         ),
                           Row(children: [
                             IconButton(
                               onPressed: () {
                               },
                               icon: const Icon(CupertinoIcons.heart , color: Colors.white, size: 23,),
                        
                             ),
                             IconButton(
                               onPressed: () {
                               
                               },
                               icon: const Icon(CupertinoIcons.share_up , color: Colors.white, size: 23,),
                        
                             ),
                             
                           ],),                                           
                       ],
                     ) , 
          
                   
                                   
                          ],
                        ) , 
          
          
                
                
            // hotel name
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text('Hotel Name' ,  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          
          
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(CupertinoIcons.location_circle ), 
                  Text("Locations")
                ],
              ),
            ),
          
          
          
          
          
                
                
            // hotel details 
          
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.star_fill , color: Colors.yellow,),
                                              Text('4.9 ' + ' (234 reviews)' , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              
                          ],
                        ),
                      Text('\$ 599/night' , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), 
                    
                    ],
                  ) , 
                  
                  
                   Divider(),
             
              
          // Suggested code may be subject to a license. Learn more: ~LicenseLog:1530625917.
          // Suggested code may be subject to a license. Learn more: ~LicenseLog:856087607.
          // Suggested code may be subject to a license. Learn more: ~LicenseLog:3983776558.
                  Text('copilot write  it:  there is no  one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...' , style: TextStyle(fontSize: 16,)),
          
          
                ],
              ),
            ),
                
                
                
                
            // hotel offer 
          
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
                                  'assets/images/hotel_services/hs${index + 1}.png'),
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
                
                
                
            // booking button
             InkWell(
            onTap: () {
              // Navigate to the next screen
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
                '   Book Now  ',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
             ),
                ],
                
          ),
        ),
      
      ),
    );
  }
}