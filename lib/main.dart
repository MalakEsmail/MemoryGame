import 'package:flutter/material.dart';
import 'model/tile_model.dart';
import 'data/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

///// Home/////
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TileModel> pairs = new List<TileModel>();
  List<TileModel> visiblePairs = new List<TileModel>();

  @override
  void initState() {
    super.initState();
    pairs = getPairs();
    pairs.shuffle();
    visiblePairs=pairs;
    selected=true;
    Future.delayed(const Duration(seconds: 5),(){
     setState(() {
             visiblePairs=getQuestion();
             selected=false;
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:EdgeInsets.symmetric(vertical: 50,horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 24,),
            Text('$points/800',style: TextStyle(fontSize:20 ,fontWeight: FontWeight.w500)),
            Text('points'),
            SizedBox(),
            GridView(
              shrinkWrap: true,
              children: List.generate(visiblePairs.length, (index) {
                return Tile(
                  imageAssetPath: visiblePairs[index].getIamgeAssetPath(),
                  selected: visiblePairs[index].getIsSelected(),
                  parent: this,
                );
              }),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                mainAxisSpacing: 0.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

///// Tile/////////
class Tile extends StatefulWidget {
  String imageAssetPath;
  bool selected;
  _HomePageState parent;

  Tile({this.imageAssetPath, this.selected, this.parent});
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: Image.asset(widget.imageAssetPath),
      ),
    );
  }
}
