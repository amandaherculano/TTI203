class ImageModel {
  late String url;
  late String alt;


  //2 construtores
  ImageModel(this.url, this.alt); 

  ImageModel.fromJSON(Map <String, dynamic> mapa){
    url = mapa['photos'][0]['scr']['small'];
    alt = mapa['photos'][0]['alt'];
  }


  @override
  String toString() {
    return 'ImageModel{url: $url, alt: $alt}';
  }

}

