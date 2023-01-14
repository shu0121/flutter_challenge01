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
                      const Text('キッチン',),
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
                      const Text('ビーチ',),
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
                      const Text('その他',),
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
              child: const Text('詳細', style: titleStyle,),
            ),
            SizedBox(height: 10,),
            Container(
              width: 330,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: EdgeInsets.all(10.0),
                child:
                Text(
                    'インドネシア共和国バリ州に属する島で、首都ジャカルタがあるジャワ島のすぐ東側の小さな島。バリ島は熱帯モンスーン気候で、4月～10月の乾季と11月～3月の雨季に分かれています。乾季はほとんど雨が降らず、湿度も低いので過ごしやすいベストシーズンです。年間の平均気温は25～29℃ですが、山間部とビーチ沿いの気温差は大きく、ウブド周辺は夜になると気温が下がります。朝晩は上に一枚着ないと肌寒いほど涼しくなるときもあります。'
                ),
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
                onPressed: (){},
                child: Text('ホテルを予約する'),
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

