class Story {
  String id;
  String imgUrl;
  String name;
  int width;
  int height;
  int likes;

  Story(int width,int height){
    this.width = width;
    this.height = height;
    this.imgUrl = 'https://picsum.photos/'+width.toString()+'/'+height.toString()+'/';
  }
}