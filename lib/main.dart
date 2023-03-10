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
                      Text('Bali', style: placeStyle,),
                      Row(
                          children: [
                            Icon(Icons.place, color: primaryColor,),
                            Text('Indonesia', style: placeStyle,),
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
                          Text('4.0', style: placeStyle,),
                        ],
                      ),
                    ],
                  ),

                ),
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.wifi, size: 30, color: primaryColor,),
                      ),
                      const Text('Wifi',),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child : const Icon(Icons.flatware, size: 30, color: primaryColor,),
                      ),
                      const Text('????????????',),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child : const Icon(Icons.beach_access, size: 30, color: primaryColor,),
                      ),
                      const Text('?????????',),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child : const Icon(Icons.more_horiz, size: 30, color: primaryColor,),
                      ),
                      const Text('?????????',),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                left: 30.0,
              ),
              child: const Text('??????', style: titleStyle,),
            ),
            SizedBox(height: 10,),
            Container(
               width: 330,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: EdgeInsets.all(10.0),
                child:
                Text(
                    '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????4??????10???????????????11??????3???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????25???29????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????'
                ),
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
                onPressed: (){},
                child: Text('????????????????????????'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                ),
            ),
          ],
        ),
      ),
    );
  }
}

