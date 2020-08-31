class User {
  final String userId, username, email, nombre, sexo, usuarioImage, token;

  User({this.userId, this.username, this.email, this.nombre, this.sexo, this.usuarioImage, this.token});

  factory User.fromJason(Map<String, dynamic> json){
    return User(
      userId: json["userId"],
      username: json["username"],
      nombre: json["nombre"],
      email: json["email"],
      sexo: json["sexo"],
      usuarioImage: json["usuarioImage"],
      token: json["token"]
    );
  }

  Map<String, dynamic> toJson(){
    return {
      "userId": this.userId,
      "username": this.username,
      "nombre": this.nombre,
      "email": this.email,
      "sexo": this.sexo,
      "usuarioImage": this.usuarioImage,
      "token": this.token,
    };
  }

}