class TileModel{
  String imageAssetPath;
  bool isSelected;
  TileModel({this.imageAssetPath,this.isSelected});
  void setIamgeAssetPath(String getIamgeAssetPath){
    imageAssetPath=getIamgeAssetPath;
  }
  void setIsSelected(bool getIsSelected){
    isSelected=getIsSelected;
  }
  String getIamgeAssetPath(){
    return imageAssetPath;
  }
  bool getIsSelected(){
    return isSelected;
  }
}