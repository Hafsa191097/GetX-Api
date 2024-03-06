class People {
    String? name;
    String? image;
    String? email;
    String? id;

    People({
        required this.name,
        required this.image,
        required this.email,
        required this.id,
    });

    People.fromJson(Map<String,dynamic> json){
      id = json['id'];
      image = json['image'];
      name = json['name'];
      email = json['email'];
    }
  

}