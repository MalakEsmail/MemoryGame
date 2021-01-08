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
  @override
  void initState() {
    super.initState();
    pairs = getPairs();
    pairs.shuffle();
    visiblePairs = pairs;
    selected = true;
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        visiblePairs = getQuestion();
        selected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            points != 800?Column(
              children: [
                Text('$points/800',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                Text('points'),
              ],
            ):Container(),
            SizedBox(
              height: 20,
            ),
            points != 800
                ? GridView(
                    shrinkWrap: true,
                    children: List.generate(visiblePairs.length, (index) {
                      return Tile(
                        imageAssetPath: visiblePairs[index].getIamgeAssetPath(),
                        parent: this,
                        tileIndex: index,
                      );
                    }),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100,
                      mainAxisSpacing: 0.0,
                    ),
                  )
                : Container(
                  padding: EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(24)),
                    child: Text(
                      'Replay',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
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
  _HomePageState parent;
  int tileIndex;

  Tile({this.imageAssetPath, this.parent, this.tileIndex});
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          if (selectedImageAssetPath != "") {
            // second time

            if (selectedImageAssetPath ==
                pairs[widget.tileIndex].getIamgeAssetPath()) {
              // correct
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                points = points + 100;
                setState(() {});
                selected = false;
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setIamgeAssetPath("");
                  pairs[selectedTileIndex].setIamgeAssetPath("");
                });
                selectedImageAssetPath = "";
              });
            } else {
              // wrong
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                selected = false;
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setIsSelected(false);
                  pairs[selectedTileIndex].setIsSelected(false);
                });
                selectedImageAssetPath = "";
              });
            }
          } else {
            // first time
            selectedTileIndex = widget.tileIndex;
            selectedImageAssetPath =
                pairs[widget.tileIndex].getIamgeAssetPath();
          }
          setState(() {
            pairs[widget.tileIndex].setIsSelected(true);
          });
        }
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: pairs[widget.tileIndex].getIamgeAssetPath() != ""
            ? Image.asset(pairs[widget.tileIndex].getIsSelected()
                ? pairs[widget.tileIndex].getIamgeAssetPath()
                : widget.imageAssetPath)
            : Image.asset('assets/correct.png'),
      ),
    );
  }
}
