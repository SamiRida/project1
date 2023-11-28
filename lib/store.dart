import 'package:flutter/material.dart';
import 'jacketsHome.dart';
import 'pantsHome.dart';
import 'shirtsHome.dart';
import 'shoesHome.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           // our company logo
              Image.asset(
                'assets/simixlogo.png', fit: BoxFit.contain, height: 105, width: 180,
              ),

            ],
          ),

          backgroundColor: Colors.cyan.shade200,

        ),
      ),
      // body of the store
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90,
                  width: 170,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(

                     backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Shirts()),
                      );
                    },
                  //shirt button
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Image.asset(
                          'assets/Shirt.png', height: 30, width: 30,
                        ),

                        const SizedBox(width: 10),
                        const Text('Shirts', style: TextStyle(fontSize: 25.0)),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                SizedBox(

                  height: 90, width: 170,
                // Jacket button
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),

                      ),
                    ),
                    onPressed: () {

                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Jackets()),

                      );
                    },

                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Image.asset(
                          'assets/jacket.png', height: 35, width: 35,
                        ),

                        const SizedBox(width: 10),

                        const Text('Jackets', style: TextStyle(fontSize: 25.0)),


                      ],
                      ),
                  ),
                ),

              ],
            ),

            const SizedBox(height: 25),

              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 90,
                    width: 170,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),

                        ),
                      ),
                      onPressed: () {

                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Pants()),
                        );
                      },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Image.asset(
                            'assets/Pants.png', height: 35, width: 35,
                          ),

                          const SizedBox(width: 10),

                          const Text('Pants', style: TextStyle(fontSize: 25.0)),

                        ],
                      ),
                    ),
                  ),

                const SizedBox(width: 20),

                  SizedBox(
                    height: 90,
                    width: 170,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.pink,

                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(15),

                        ),
                      ),


                      onPressed: () {


                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Shoes()),
                          );
                      },

                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(

                            'assets/Shoes.png', height: 35, width: 35,
                          ),

                          const SizedBox(width: 10),

                          const Text('Shoes', style: TextStyle(fontSize: 25.0)),

                        ],
                      ),
                    )
                    ,
                  ),

              ],
             ),

            const SizedBox(height: 25),

          const SizedBox(height: 25),


          const Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [

                  CircleAvatar(
                    backgroundImage: AssetImage('assets/sami.jpeg'),// sami's photo
                    radius: 50,
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Sami Rida', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),// name under sami's the photo
                  ),
                ],
              ),
              SizedBox(width: 20),

              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/assaf.jpg'), radius: 50,//mohammad's photo
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Mohammad Assaf', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),//name under mohammad's photo
                  ),
                ],
              ),

            ],
           ),

          const SizedBox(height: 20),

          const Column( //contact us

            children: [

              Text('Contact Us', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              Text('Email: assaf@simix.com ', style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 5),

              Text('Email: sami@simix.com ', style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 5),

              Text('Phone: (+961) 3 000 000 ', style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 5),

              Text('Address: 123 Hamra St, Simixville', style: TextStyle(fontSize: 18),
              ),

            ],
          ),

          const SizedBox(height: 20),
        ],

         ),
       ),
    );
  }
}






































