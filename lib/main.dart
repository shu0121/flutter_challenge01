import 'package:flutter/material.dart';
import 'package:flutter_challenge01/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          // color: Colors.grey,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
        ),
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
    Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset('images/pracePic/IMG_2237.JPG'),
                ),
                SafeArea(
                    child:Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.share), color: Colors.white,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border), color: Colors.white,)
                        ],
                      ),
                    ),
                ),
                Container(
                  height: 350,
                  padding: EdgeInsets.only(
                    left: 15.0,
                    bottom: 95.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bali', style: titleStyle,),
                      Row(
                          children: [
                            Icon(Icons.place, color: primaryColor,),
                            Text('Indonesia', style: titleStyle,),
                          ],
                        ),
                      Row(
                        children: [
                          Icon(Icons.star, color: primaryColor,),
                          Icon(Icons.star, color: primaryColor,),
                          Icon(Icons.star, color: primaryColor,),
                          Icon(Icons.star, color: primaryColor,),
                          Icon(Icons.star_border, color: primaryColor,),
                          Text(' '),
                          Text('4.0', style: titleStyle,),
                        ],
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ],
          // children: ClipRRect(
          //   borderRadius: BorderRadius.circular(30),
          //   child: Image.asset('images/pracePic/IMG_2237.JPG'),
          // ),
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(onPressed: (){}, icon: Icon(Icons.navigate_before_outlined), color: Colors.white,),
//           IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border), color: Colors.white,)
//
//         ],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('images/pracePic/IMG_2237.JPG'),
//           ),
//           border: Border.all(color: Colors.white, width: 3,),
//           borderRadius: BorderRadius.circular(50),
//         ),
//         child: Column(
//           children: [
//                 Text('Bali', style: titleStyle,),
//                 Container(
//                   child: Row(
//                     children: [
//                       Icon(Icons.place, color: primaryColor,),
//                       Text('Indonesia', style: titleStyle,),
//                     ],
//                   ),
//                 ),
//             Container(
//               child: Row(
//                 children: [
//                   Icon(Icons.star, color: primaryColor,),
//                   Icon(Icons.star, color: primaryColor,),
//                   Icon(Icons.star, color: primaryColor,),
//                   Icon(Icons.star, color: primaryColor,),
//                   Icon(Icons.star_border, color: primaryColor,),
//                   Text('4.0', style: titleStyle,),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
