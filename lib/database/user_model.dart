

const String tableName = "user";

class User{
  int? id;
  String userName,email,number,password;
  User(this.userName,this.email,this.number,this.password);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userName':userName,
      'email':email,
      'number':number,
      'password':password,
    };
  }

  User.fromObject(Map<String, dynamic> item):
  id=item['id'],userName = item['userName'], email = item['email'], number = item['number'], password = item['password'];

}