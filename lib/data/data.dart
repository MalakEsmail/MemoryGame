import '../model/tile_model.dart';
int points=0;
bool selected=false;

List<TileModel> getPairs() {
  List<TileModel> pairs = new List<TileModel>();
  TileModel tileModel = new TileModel();

  //1
  tileModel.setIamgeAssetPath('assets/fox.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //2
  tileModel.setIamgeAssetPath('assets/hippo.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //3
  tileModel.setIamgeAssetPath('assets/horse.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //4
  tileModel.setIamgeAssetPath('assets/monkey.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //5
  tileModel.setIamgeAssetPath('assets/panda.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //6
  tileModel.setIamgeAssetPath('assets/parrot.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //7
  tileModel.setIamgeAssetPath('assets/rabbit.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //8
  tileModel.setIamgeAssetPath('assets/zoo.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  return pairs;
}
List<TileModel> getQuestion() {
  List<TileModel> pairs = new List<TileModel>();
  TileModel tileModel = new TileModel();

  //1
  tileModel.setIamgeAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //2
  tileModel.setIamgeAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //3
  tileModel.setIamgeAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //4
  tileModel.setIamgeAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //5
  tileModel.setIamgeAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //6
  tileModel.setIamgeAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //7
  tileModel.setIamgeAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //8
  tileModel.setIamgeAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  return pairs;
}
