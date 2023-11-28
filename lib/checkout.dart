import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  final double total;

  const Checkout({Key? key, required this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

          title: const Text('Thanks for Purchase'),
          backgroundColor: Colors.cyan.shade200,

          ),
        body: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Icon(

              Icons.check_circle,   color: Colors.green,   size: 100,

              ),

            const SizedBox(height: 20),

            const Text(
              'Thank you for your purchase!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
             ),

            const SizedBox(height: 20),

              Text(
                'Total Amount: \$${total.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18),
               ),

            ],
          ),
        ),
       );
   }
}
