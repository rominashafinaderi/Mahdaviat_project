class Post {
  String? title;
  String? type;
  String? typeFa;
  String? image;

  Post({this.title, this.type, this.typeFa, this.image});

  Post.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    type = json['type'];
    typeFa = json['type_fa'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['type'] = this.type;
    data['type_fa'] = this.typeFa;
    data['image'] = this.image;
    return data;
  }
}
