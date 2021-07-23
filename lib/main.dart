import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '投げられ詳細',
      theme: ThemeData(
                primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {



  final myController = TextEditingController();
  final myFocusNode = FocusNode();
  String name = "";
  int nojiru=0;
  int nojiru_syuho=0;
  int nojiru_kekka=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('投げられフォーム'),
      ),

      body: SingleChildScrollView(



        child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),





              Container(
                width: 2000,
                height: 100,
                decoration: BoxDecoration(
                  border: const Border(
                    bottom: const BorderSide(
                      color: Colors.black,
                      width: 5,
                    ),
                  ),
                ),

              ),Text("脳汁指数",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),




              Text('問い・仮説',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  nojiru.toString(),style: TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.bold)

                ),
                Text(
                  '点',

                )
              ],
            ),
              Slider(
          value: nojiru.toDouble(),
          min: 0,
          max: 100,
          onChanged: (double newValue) {
            setState(() {
              nojiru = newValue.round();
            });
          },
        ),
              Text('手法',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    nojiru_syuho.toString(),style: TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.bold)

                  ),
                  Text(
                    '点',

                  )
                ],
              ),
              Slider(
                value: nojiru_syuho.toDouble(),
                min: 0,
                max: 100,
                onChanged: (double newValue) {
                  setState(() {
                    nojiru_syuho = newValue.round();
                  });
                },
              ),
              Text('成果',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    nojiru_kekka.toString(),style: TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.bold)

                  ),
                  Text(
                    '点',

                  )
                ],
              ),
              Slider(
                value: nojiru_kekka.toDouble(),
                min: 0,
                max: 100,
                onChanged: (double newValue) {
                  setState(() {
                    nojiru_kekka = newValue.round();
                  });
                },
              ),

              Container(
                width: 2000,
                height: 100,
                decoration: BoxDecoration(
                  border: const Border(
                    bottom: const BorderSide(
                      color: Colors.black,
                      width: 5,
                    ),
                  ),
                ),

              ),Text("どの点をフィードバックする？",textAlign: TextAlign.left,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              TextField(
                decoration: InputDecoration(
                  hintText: '分からなかった点',
                ),
                onChanged: (text) {
                  // TODO: ここで取得したtextを使う
                  name = text;
                },
              ),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  hintText: '質問',
                ),onChanged: (text) {
                // TODO: ここで取得したtextを使う
                name = text;
              },
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'その他',
                ),
                onChanged: (text) {
                  // TODO: ここで取得したtextを使う
                  name = text;
                },
              ),
              ElevatedButton(
                child: Text('ブン投げ返す！'),
                onPressed: () {

                },
              )
              , Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      child: Text('下書き保存'),
                      onPressed: () {

                      }

                      ,
                    ),
                  ]),
            ]),
      ),
    );
  }


}